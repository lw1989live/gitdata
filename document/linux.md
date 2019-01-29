鳥哥的 Linux 私房菜 - 基礎學習篇目錄

    • 第一部份：Linux的規劃與安裝 
    第一部份 Linux 的規劃與安裝

常常聽到Linux具有非常優良的血統，所以具有相當良好的多人多工環境，可以方便程式設計師來開發軟體。 此外，Linux本身是不用錢的『自由軟體』，使用上面並沒有所謂的『盜版』問題。但是，為什麼Linux不用錢？ 隨便修改或發佈Linux為什麼不會被罰？為什麼Linux有這麼多的版本？包括Fedora, SuSE, CentOS, Debian等等？ 這個都是我們必須要來瞭解的部分！瞭解這些部分，妳才會對Linux有一個正確的理解，才能夠跟你的同事、同學、 上司說明，為什麼使用Linux具有很多優點與好處！ ^_^

Linux並不好學習，鳥哥也是『重傷』過好幾次才能對Linux有一些基礎的認知。那麼到底應該如何學習Linux呢？關鍵在實作。 既然要實作就得要實際的安裝一部Linux，那麼Linux要安裝前需要熟悉哪些基礎觀念？計算機概論是非常重要的一環！ 因為Linux與硬體的關係還不小～此外，打造一台Windows/Linux共存的主機也是很有用的， 至少對於需要多平台但又缺乏空間與金錢的朋友來說，這樣的處理是非常有用的！

在第一篇裡面，我們會由計算機概論談起，再講到Linux的歷史淵源與自由軟體的關係，然後重點在於如何規劃硬體與Linux安裝， 最後談到如何登入與使用Linux圖形/文字介面的環境。本篇資料較多，第一次接觸Linux的新朋友， 很多資料若看不懂可以先略過，等到後續文章都讀完了再回來看，才會有幫助喔！ ^_^

第零章、計算機概論
最近更新日期：2016/12/28 
由過去的經驗當中，鳥哥發現到因為興趣或生活所逼而必須要接觸 Linux 的朋友，很多可能並非資訊相關科系出身， 因此對於電腦軟/硬體方面的概念不熟。然而作業系統這種咚咚跟硬體有相當程度的關連性， 所以，如果不瞭解一下計算機概論，要很快的瞭解 Linux 的概念是有點難度的。因此，鳥哥就自作聰明的新增一個小章節來談談計概囉！ 因為鳥哥也不是資訊相關學門出身，所以，寫的不好的地方請大家多多指教啊！^_^
    • 0.1 電腦：輔助人腦的好工具 
        ◦ 0.1.1 電腦硬體的五大單元 
        ◦ 0.1.2 一切設計的起點：CPU 的架構, RISC與ARM, CISC與x86 
        ◦ 0.1.3 其他單元的設備 
        ◦ 0.1.4 運作流程 
        ◦ 0.1.5 電腦用途的分類 
        ◦ 0.1.6 電腦上面常用的計算單位 (容量、速度等) 
    • 0.2 個人電腦架構與相關設備元件 
        ◦ 0.2.1 執行腦袋運算與判斷的 CPU： CPU的工作時脈, 32位元與64位元, CPU等級, 超執行緒 
        ◦ 0.2.2 記憶體： 多通道, DRAM與SRAM, ROM 
        ◦ 0.2.3 顯示卡： PCIe 規格 
        ◦ 0.2.4 硬碟與儲存設備： 物理組成, 磁碟盤與磁區, 傳輸界面(SATA,SAS,USB..), SSD, 購買與運轉 
        ◦ 0.2.5 擴充卡與界面 
        ◦ 0.2.6 主機板 
        ◦ 0.2.7 電源供應器 
        ◦ 0.2.8 選購須知 
    • 0.3 資料表示方式 
        ◦ 0.3.1 數字系統 
        ◦ 0.3.2 文字編碼系統 
    • 0.4 軟體程式運作 
        ◦ 0.4.1 機器程式與編譯程式 
        ◦ 0.4.2 作業系統 
        ◦ 0.4.3 應用程式 
    • 0.5 重點回顧 
        ◦ 0.5 重點回顧
    • 計算機的定義為：『接受使用者輸入指令與資料，經由中央處理器的數學與邏輯單元運算處理後，以產生或儲存成有用的資訊』； 
    • 電腦的五大單元包括：輸入單元、輸出單元、控制單元、算數邏輯單元、記憶單元五大部分。其中CPU佔有控制、算術邏輯單元，記憶單元又包含主記憶體與輔助記憶體； 
    • 資料會流進/流出記憶體是CPU所發佈的控制命令，而CPU實際要處理的資料則完全來自於主記憶體； 
    • CPU依設計理念主要分為：精簡指令集(RISC)與複雜指令集(CISC)系統； 
    • 關於CPU的時脈部分：外頻指的是CPU與外部元件進行資料傳輸時的速度，倍頻則是CPU內部用來加速工作效能的一個倍數， 兩者相乘才是CPU的時脈速度； 
    • 新的 CPU 設計中，已經將北橋的記憶體控制晶片整合到 CPU 內，而 CPU 與主記憶體、顯示卡溝通的匯流排通常稱為系統匯流排。 南橋就是所謂的輸入輸出(I/O)匯流排，主要在聯繫硬碟、USB、網路卡等周邊設備； 
    • CPU每次能夠處理的資料量稱為字組大小(word size)，字組大小依據CPU的設計而有32位元與64位元。 我們現在所稱的電腦是32或64位元主要是依據這個 CPU解析的字組大小而來的！ 
    • 個人電腦的主記憶體主要元件為動態隨機存取記憶體(Dynamic Random Access Memory, DRAM)， 至於CPU內部的第二層快取則使用靜態隨機存取記憶體(Static Random Access Memory, SRAM)； 
    • BIOS(Basic Input Output System)是一套程式，這套程式是寫死到主機板上面的一個記憶體晶片中， 這個記憶體晶片在沒有通電時也能夠將資料記錄下來，那就是唯讀記憶體(Read Only Memory, ROM)； 
    • 目前主流的外接卡界面大多為 PCIe 界面，且最新為 PCIe 3.0，單通道速度高達 1GBytes/s 
    • 常見的顯示卡連接到螢幕的界面有 HDMI/DVI/D-Sub/Display port 等等。HDMI 可同時傳送影像與聲音。 
    • 傳統硬碟的組成為：圓形磁碟盤、機械手臂、 磁碟讀取頭與主軸馬達所組成的，其中磁碟盤的組成為磁區、磁軌與磁柱； 
    • 磁碟連接到主機板的界面大多為 SATA 或 SAS，目前桌機主流為 SATA 3.0，理論極速可達 600Mbytes/s。 
    • 常見的文字編碼為 ASCII，繁體中文編碼主要有 Big5 及 UTF8 兩種，目前主流為 UTF8 
    • 作業系統(Operating System, OS)其實也是一組程式， 這組程式的重點在於管理電腦的所有活動以及驅動系統中的所有硬體。 
    • 電腦主要以二進位作為單位，常用的磁碟容量單位為bytes，其單位換算為1 Byte = 8bits。 
    • 最陽春的作業系統僅在驅動與管理硬體，而要使用硬體時，就得需要透過應用軟體或者是殼程式(shell)的功能， 來呼叫作業系統操縱硬體工作。目前稱為作業系統的，除了上述功能外，通常已經包含了日常工作所需要的應用軟體在內了。 
    • 
    • 0.6 本章習題 
    • 0.7 參考資料與延伸閱讀 

    註1：名片型電腦，或單版電腦：
        香蕉派台灣官網：http://tw.bananapi.org/
        Xapple pi 粉絲團：https://www.facebook.com/roseapplepi
    註2：可穿戴式電腦：http://en.wikipedia.org/wiki/Wearable_computer
    註3：對於CPU的原理有興趣的讀者，可以參考維基百科的說明：
    英文CPU(http://en.wikipedia.org/wiki/CPU)
    中文CPU(http://zh.wikipedia.org/wiki/中央處理器)。
    註4：圖片參考：
    Wiki book: http://en.wikibooks.org/wiki/IB/Group_4/Computer_Science/Computer_Organisation
    作者：陳錦輝，『計算機概論-探索未來2008』，金禾資訊，2007出版
    註5：更詳細的RISC架構可以參考維基百科：
    http://zh.wikipedia.org/w/index.php?title=精簡指令集&variant=zh-tw
    相關的 CPU 種類可以參考：
    Oracle SPARC: http://en.wikipedia.org/wiki/SPARC
    IBM Power CPU: http://en.wikipedia.org/wiki/IBM_POWER_microprocessors
    註6：關於ARM架構的說明，可以參考維基百科：
    http://zh.wikipedia.org/w/index.php?title=ARM架構&variant=zh-tw
    註7：更詳細的CISC架構可參考維基百科：
    http://zh.wikipedia.org/w/index.php?title=CISC&variant=zh-tw
    註8：更詳細的x86架構發展史可以參考維基百科：
    http://zh.wikipedia.org/w/index.php?title=X86&variant=zh-tw
    註9：用來觀察 CPU 相關資訊的 CPU-Z 軟體網站：
    http://www.cpuid.com/softwares/cpu-z.html
    註10：Intel i7 4790 CPU 的詳細規格介紹
    http://ark.intel.com/zh-tw/products/80806/Intel-Core-i7-4790-Processor-8M-Cache-up-to-4_00-GHz
    註11：DDR 記憶體的詳細規格介紹
    http://zh.wikipedia.org/wiki/DDR_SDRAM
    註12：相關的韌體說明可參考維基百科：
    http://zh.wikipedia.org/w/index.php?title=韌體&variant=zh-hant
    註13：相關 EEPROM 可以參考維基百科：
    http://zh.wikipedia.org/w/index.php?title=EEPROM&variant=zh-tw
    註14：相關 BIOS 的說明可以參考維基百科：
    http://zh.wikipedia.org/w/index.php?title=BIOS&variant=zh-tw
    註15：相關 PCIe 的說明可以參考維基百科：
    http://en.wikipedia.org/wiki/PCI_Express
    註16：關於磁碟盤資料的說明：Zone bit recording ：
    http://en.wikipedia.org/wiki/Zone_bit_recording
    註17：關於 SATA 磁碟界面的 wiki 說明 ：
    http://zh.wikipedia.org/wiki/SATA
    註18：關於 SAS 磁碟界面的 wiki 說明 ：
    http://en.wikipedia.org/wiki/SCSI#SCSI-EXPRESS
    http://en.wikipedia.org/wiki/Serial_attached_SCSI
    註19：關於 USB 界面的 wiki 說明 ：
    http://en.wikipedia.org/wiki/USB
    註20：關於 SSD 的 wiki 說明 ：
    http://en.wikipedia.org/wiki/Solid-state_drive
    感謝：本章當中出現很多圖示，很多是從Tom's Hardware(http://www.tomshardware.com/)網站取得的，在此特別感謝！

    • 針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=31574 

第一章、Linux是什麼與如何學習
最近更新日期：2015/04/23 
眾所皆知的，Linux的核心原型是1991年由托瓦茲(Linus Torvalds)寫出來的，但是托瓦茲為何可以寫出Linux這個作業系統？ 為什麼他要選擇386的電腦來開發？為什麼Linux的發展可以這麼迅速？又為什麼Linux是免費且可以自由學習的？ 以及目前為何有這麼多的Linux套件版本(distributions)呢？瞭解這些東西後，才能夠知道為何Linux可以免除專利軟體之爭， 並且瞭解到Linux為何可以同時在個人電腦與大型主機上面大放異彩！ 所以，在實際進入Linux的世界前，就讓我們來談一談這些有趣的歷史故事吧！ ^_^
    • 1.1 Linux是什麼 
        ◦ 1.1.1 Linux是什麼？作業系統/應用程式？ 
        ◦ 1.1.2 Linux之前，Unix的歷史 
        ◦ 1.1.3 關於GNU計畫、自由軟體與開放原始碼 
    • 1.2 Torvalds的Linux發展 
        ◦ 1.2.1 與Minix之間 
        ◦ 1.2.2 對386硬體的多工測試 
        ◦ 1.2.3 初次釋出Linux 0.02 
        ◦ 1.2.4 Linux的發展：虛擬團隊的產生 
        ◦ 1.2.5 Linux 的核心版本 
        ◦ 1.2.6 Linux distributions 
    • 1.3 Linux當前應用的角色 
        ◦ 1.3.1 企業環境的利用 
        ◦ 1.3.2 個人環境的使用 
        ◦ 1.3.3 雲端運用 
    • 1.4 Linux 該如何學習 
        ◦ 1.4.1 從頭學習Linux基礎 
        ◦ 1.4.2 選擇一本易讀的工具書 
        ◦ 1.4.3 實作再實作 
        ◦ 1.4.4 發生問題怎麼處理啊？建議流程是這樣... 
        ◦ 1.4.5 鳥哥的建議(重點在solution的學習) 
    • 1.5 重點回顧 
        ◦ 1.5 重點回顧
    • 作業系統(Operation System)主要在管理與驅動硬體，因此必須要能夠管理記憶體、管理裝置、 負責行程管理以及系統呼叫等等。因此，只要能夠讓硬體準備妥當(Ready)的情況， 就是一個陽春的作業系統了。 
    • Unix的前身是由貝爾實驗室(Bell lab.)的Ken Thompson利用組合語言寫成的， 後來在1971-1973年間由Dennis Ritchie以C程式語言進行改寫，才稱為Unix。 
    • 1977年由Bill Joy釋出BSD (Berkeley Software Distribution)，這些稱為Unix-like的作業系統。 
    • 1984年由Andrew Tanenbaum開始製作Minix作業系統，該系統可以提供原始碼以及軟體； 
    • 1984年由Richard Stallman提倡GNU計畫，倡導自由軟體(Free software)， 強調其軟體可以『自由的取得、複製、修改與再發行』，並規範出GPL授權模式， 任何GPL(General Public License)軟體均不可單純僅販賣其軟體，也不可修改軟體授權。 
    • 1991年由芬蘭人Linus Torvalds開發出Linux作業系統。簡而言之，Linux成功的地方主要在於： Minix(Unix), GNU, Internet, POSIX 及虛擬團隊的產生。 
    • 符合 Open source 理念的授權相當多，比較知名的如 Apache / BSD / GPL / MIT 等。 
    • Linux本身就是個最陽春的作業系統，其開發網站設立在http://www.kernel.org，我們亦稱Linux作業系統最底層的資料為『核心(Kernel)』。 
    • 從 Linux kernel 3.0 開始，已經捨棄奇數、偶數的核心版本規劃，新的規劃使用主線版本 (MainLine) 為依據， 並提供長期支援版本 (longterm) 來加強某些功能的持續維護。 
    • Linux distributions的組成含有：『Linux Kernel + Free Software + Documentations(Tools) + 可完整安裝的程序』所製成的一套完整的系統。 
    • 常見的 Linux distributions 分類有『商業、社群』分類法，或『RPM、DPKG』分類法 
    • 學習 Linux 最好從頭由基礎開始學習，找到一本適合自己的書籍，加強實作才能學會 
    • 
    • 1.6 本章習題 
    • 1.7 參考資料與延伸閱讀 
 
    註1：Multics計畫網站：http://www.multicians.org/。
    註2：Ken Thompson 的 wiki 簡介：http://en.wikipedia.org/wiki/Ken_Thompson
    註3：Dennis Ritchie 的 wiki 簡介： http://en.wikipedia.org/wiki/Dennis_Ritchie
    註4：Bill joy 的 wiki 簡介： http://en.wikipedia.org/wiki/Bill_Joy
    註5：Andrew Tanenbaum 的 wiki 簡介： http://en.wikipedia.org/wiki/Andrew_S._Tanenbaum
    註6：Richard Stallman的個人網站： http://www.stallman.org/
    註7：GNU 計畫的官網： http://www.gnu.org/
    註8：開放原始碼促進會針對 open source 的解釋： http://opensource.org/definition
    以及 Open source 與 free software 的差異：http://opensource.org/faq#free-software
    註9：開放原始碼促進會針對 Open source 授權的彙整介紹： http://opensource.org/licenses
    註10：Linus Torvalds 在 Wiki 的介紹： http://en.wikipedia.org/wiki/Linus_Torvalds
    註11：Cluster Computer 在 Wiki 的介紹： http://en.wikipedia.org/wiki/Computer_cluster
    註12：Android 在 Wiki 的介紹： http://zh.wikipedia.org/wiki/Android
    洪朝貴老師的GNU/FSF介紹： http://people.ofset.org/~ckhung/a/c_83.php
    葛林穆迪著，杜默譯，『Linux傳奇』，時報文化出版企業。
    書本介紹：http://findbook.tw/book/9789571333632/basic
    XFree86的網站：http://www.xfree86.org/
    POSIX的相關說明：
    維基百科：http://en.wikipedia.org/wiki/POSIX
    IEEE POSIX標準：http://standards.ieee.org/regauth/posix/

   • 針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23871 


第二章、主機規劃與磁碟分割
最近更新日期：2015/04/28 
事實上，要安裝好一部Linux主機並不是那麼簡單的事情，你必須要針對distributions的特性、伺服器軟體的能力、 未來的升級需求、硬體擴充性需求等等來考量，還得要知道磁碟分割、檔案系統、Linux操作較頻繁的目錄等等， 都得要有一定程度的瞭解才行，所以，安裝Linux並不是那麼簡單的工作喔！ 不過，要學習Linux總得要有Linux系統存在吧？所以鳥哥在這裡還是得要提前說明如何安裝一部Linux練習機。 在這一章裡面，鳥哥會介紹一下，在開始安裝Linux之前，您應該要先思考哪些工作？ 好讓您後續的主機維護輕鬆愉快啊！此外，要瞭解這個章節的重要性，您至少需要瞭解到Linux檔案系統的基本概念， 這部份初學者是不可能具備的！所以初學者在這個章節裡面可能會覺得很多部份都是莫名其妙！沒關係！ 在您完成了後面的相關章節之後，記得要再回來這裡看看如何規劃主機即可！ ^_^
    • 2.1 Linux與硬體的搭配 
        ◦ 2.1.1 認識電腦的硬體配備 
        ◦ 2.1.2 選擇與Linux搭配的主機配備： 硬體支援相關網站 
        ◦ 2.1.3 各硬體裝置在Linux中的檔名 
        ◦ 2.1.4 使用虛擬機器學習 
    • 2.2 磁碟分割 
        ◦ 2.2.1 磁碟連接的方式與裝置檔名的關係 
        ◦ 2.2.2 MSDOS(MBR) 與 GPT 磁碟分割表(partition table) 
        ◦ 2.2.3 開機流程中的 BIOS 與 UEFI 開機檢測程式 
        ◦ 2.2.4 Linux安裝模式下，磁碟分割的選擇(極重要)
    • 2.3 安裝Linux前的規劃 
        ◦ 2.3.1 選擇適當的distribution 
        ◦ 2.3.2 主機的服務規劃與硬體的關係 
        ◦ 2.3.3 主機硬碟的主要規劃(partition) 
        ◦ 2.3.4 鳥哥的兩個實際案例 
    • 2.4 重點回顧 
        ◦ 2.4 重點回顧
    • 新添購電腦硬體配備時，需要考量的角度有『遊戲機/工作機』、『效能/價格比』、『效能/消耗瓦數』、『支援度』等； 
    • 舊的硬體配備可能由於保存的問題或者是電子零件老化的問題，導致電腦系統非常容易在運作過程中出現不明的當機情況 
    • Red Hat的硬體支援：https://hardware.redhat.com/?pagename=hcl 
    • 在Linux系統中，每個裝置都被當成一個檔案來對待，每個裝置都會有裝置檔名。 
    • 磁碟裝置檔名通常分為兩種，實際SATA/USB裝置檔名為/dev/sd[a-p]，而虛擬機的裝置可能為/dev/vd[a-p] 
    • 磁碟的第一個磁區主要記錄了兩個重要的資訊，分別是： (1)主要開機記錄區(Master Boot Record, MBR)：可以安裝開機管理程式的地方，有446 bytes (1)分割表(partition table)：記錄整顆硬碟分割的狀態，有64 bytes； 
    • 磁碟的 MBR 分割方式中，主要與延伸分割最多可以有四個，邏輯分割的裝置檔名號碼，一定由5號開始； 
    • 如果磁碟容量大於 2TB 以上時，系統會自動使用 GPT 分割方式來處理磁碟分割。 
    • GPT 分割已經沒有延伸與邏輯分割槽的概念，你可以想像成所有的分割都是主分割！ 
    • 某些作業系統要使用 GPT 分割時，必須要搭配 UEFI 的新型 BIOS 格式才可安裝使用。 
    • 開機的流程由：BIOS-->MBR-->-->boot loader-->核心檔案； 
    • boot loader的功能主要有：提供選單、載入核心、轉交控制權給其他loader 
    • boot loader可以安裝的地點有兩個，分別是 MBR 與 boot sector 
    • Linux作業系統的檔案使用目錄樹系統，與磁碟的對應需要有『掛載』的動作才行； 
    • 新手的簡單分割，建議只要有/及swap兩個分割槽即可 
    • 
    • 2.5 本章習題 
    • 2.6 參考資料與延伸閱讀 

2.6 參考資料與延伸閱讀

    GUID / GPT 磁碟分割表與 MBR 的限制 wiki 簡介：
    http://zh.wikipedia.org/wiki/GUID磁碟分割表
    http://zh.wikipedia.org/wiki/全局唯一标识符
    與 UEFI 界面有關的介紹：
    Wiki 介紹：http://zh.wikipedia.org/wiki/統一可延伸韌體介面
    T客幫介紹：http://www.techbang.com/posts/4361-fully-understand-uefi-bios-theory-and-actual-combat-3-liu-xiudian
    黃明華先生的介紹：http://www.netadmin.com.tw/article_content.aspx?sn=1501070001&jump=3

    • 針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23874 


第三章、安裝 CentOS7.x
最近更新日期：2015/05/06 
Linux distributions越作越成熟，所以在安裝方面也越來越簡單！雖然安裝非常的簡單， 但是剛剛前一章所談到的基礎認知還是需要瞭解的，包括MBR/GPT, partition, boot loader, mount, software的選擇等等的資料。 這一章鳥哥的安裝定義為『一部練習機』，所以安裝的方式都是以最簡單的方式來處理的。 另外，鳥哥選擇的是CentOS 7.x的版本來安裝的啦！在內文中，只要標題內含有(Option) 的，代表是鳥哥額外的說明，你應該看看就好，不需要實作喔！^_^
    • 3.1 本練習機的規劃--尤其是分割參數 
    • 3.2 開始安裝CentOS 7 
        ◦ 3.2.1 調整開機媒體(BIOS)與虛擬機建置流程 
        ◦ 3.2.2 選擇安裝模式與開機： inst.gpt 參數 
        ◦ 3.2.3 在地設定之時區、語系與鍵盤配置 
        ◦ 3.2.4 安裝來源設定與軟體選擇 
        ◦ 3.2.5 磁碟分割與檔案系統設定 
        ◦ 3.2.6 核心管理與網路設定 
        ◦ 3.2.7 開始安裝、設定 root 密碼與新增可切換身份之一般用戶 
        ◦ 3.2.8 準備使用系統前的授權同意 
        ◦ 3.2.9 其他功能：RAM testing, 安裝筆記型電腦的核心參數(Option) 
    • 3.3 多重開機安裝流程與管理(Option) 
        ◦ 3.3.1 安裝 CentOS 7.x + windows 7 的規劃 
        ◦ 3.3.2 進階安裝 CentOS 7.x 與 Windows 7 
        ◦ 3.3.3 救援 MBR 內的開機管理程式與設定多重開機選單 
    • 3.4 重點回顧 
        ◦ 3.4 重點回顧
    • 不論你要安裝什麼樣的Linux作業系統角色，都應該要事先規劃例如分割、開機管理程式等； 
    • 建議練習機安裝時的磁碟分割能有/, /boot, /home, swap四個分割槽； 
    • 安裝CentOS 7.x的模式至少有兩種，分別是圖形介面與文字介面； 
    • CentOS 7 會主動依據你的磁碟容量判斷要用 MBR 或 GPT 分割方式，你也可以強迫使用 GPT； 
    • 若安裝筆記型電腦時失敗，可嘗試在開機時加入『linux nofb apm=off acpi=off』來關閉省電功能； 
    • 安裝過程進入分割後，請以『自訂的分割模式』來處理自己規劃的分割方式； 
    • 在安裝的過程中，可以建立邏輯捲軸管理員 (LVM)； 
    • 一般要求swap應該要是1.5~2倍的實體記憶體量，但即使沒有swap依舊能夠安裝與運作Linux作業系統； 
    • CentOS 7預設使用 xfs 作為檔案系統 
    • 沒有連上Internet時，可嘗試關閉防火牆，但SELinux最好選擇『強制』狀態； 
    • 設定時不要選擇啟動kdump，因為那是給核心開發者查閱當機資料的； 
    • 可加入時間伺服器來同步化時間，台灣可選擇tock.stdtime.gov.tw這一部； 
    • 盡量使用一般用戶來操作Linux，有必要再轉身份成為root即可。 
    • 即使是練習機，在建置 root 密碼時，建議依舊能夠保持良好的密碼規則，不要隨便設定！ 
    • 
    • 3.5 本章習題 
    • 3.6 參考資料與延伸閱讀 
 
    註1：虛擬機器管理員建置一部虛擬機器的流程：
    http://www.cyberciti.biz/faq/kvm-virt-manager-install-centos-linux-guest/
    http://www.itzgeek.com/how-tos/linux/centos-how-tos/install-kvm-qemu-on-centos-7-rhel-7.html#axzz3Yf6il9S2
    https://virt-manager.org/screenshots/
    註2：CentOS 7 網卡的命名規則：
    https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Networking_Guide/sec-Understanding_the_Predictable_Network_Interface_Device_Names.html
    註3：進階記憶體測試網站：http://www.memtest.org/
    註4：更多的核心參數可以參考如下連結：
    http://www.faqs.org/docs/Linux-HOWTO/BootPrompt-HOWTO.html
    對於安裝過程所加入的參數有興趣的，則可以參考底下這篇連結，裡面有詳細說明硬體原因：
    http://polishlinux.org/choose/laptop/
    安裝過程的簡易示意圖：
    http://www.tecmint.com/centos-7-installation/
    https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Installation_Guide/sect-disk-partitioning-setup-x86.html

   • 針對本文的建議：http://phorum.vbird.org/viewtopic.php?p=135157 


第四章、首次登入與線上求助
最近更新日期：2015/06/02 
終於可以開始使用Linux這個有趣的系統了！由於Linux系統使用了非同步的磁碟/記憶體資料傳輸模式，同時又是個多人多工的環境， 所以你不能隨便的不正常關機，關機有一定的程序喔！錯誤的關機方法可能會造成磁碟資料的損毀呢！ 此外，Linux有多種不同的操作方式，圖形介面與文字介面的操作有何不同？ 我們能否在文字介面取得大量的指令說明，而不需要硬背某些指令的選項與參數等等。這都是這一章要來介紹的呢！
    • 4.1 首次登入系統 
        ◦ 4.1.1 首次登入CentOS 7.x圖形介面 
        ◦ 4.1.2 GNOME的操作與登出, 應用程式, 檔案總管, 中文輸入法, 登出視窗, 快速重啟 X 
        ◦ 4.1.3 X Window與文字模式的切換, startx 
        ◦ 4.1.4 在終端介面登入linux 
    • 4.2 文字模式下指令的下達 
        ◦ 4.2.1 開始下達指令, 語系的支援 
        ◦ 4.2.2 基礎指令的操作, date, cal, bc 
        ◦ 4.2.3 重要的幾個熱鍵[Tab], [ctrl]-c, [ctrl]-d, [shift]+[UP/DOWN] 
        ◦ 4.2.4 錯誤訊息的查看 
    • 4.3 Linux系統的線上求助man page與info page 
        ◦ 4.3.1 指令的 --help 求助說明 
        ◦ 4.3.2 man page, mandb/makewhatis 
        ◦ 4.3.3 info page 
        ◦ 4.3.4 其他有用的文件(documents) 
    • 4.4 超簡單文書編輯器： nano 
    • 4.5 正確的關機方法: sync, shutdown, reboot, halt, poweroff, systemctl
    • 4.6 重點回顧 
        ◦ 4.6 重點回顧
    • 為了避免瞬間斷電造成的Linux系統危害，建議做為伺服器的Linux主機應該加上不斷電系統來持續提供穩定的電力； 
    • 養成良好的操作習慣，盡量不要使用 root 直接登入系統，應使用一般帳號登入系統，有需要再轉換身份 
    • 可以透過『活動總覽』查看系統所有使用的軟體及快速啟用慣用軟體 
    • 在X的環境下想要『強制』重新啟動X的組合按鍵為：『[alt]+[ctrl]+[backspace]』； 
    • 預設情況下，Linux提供tty1~tty6的終端機界面； 
    • 在終端機環境中，可依據提示字元為$或#判斷為一般帳號或root帳號； 
    • 取得終端機支援的語系資料可下達『echo $LANG』或『locale』指令； 
    • date可顯示日期、cal可顯示日曆、bc可以做為計算機軟體； 
    • 組合按鍵中，[tab]按鍵可做為(1)命令補齊或(2)檔名補齊或(3)參數選項補齊，[ctrl]-[c]可以中斷目前正在運作中的程式； 
    • Linux 系統上的英文大小寫為不同的資料 
    • 線上說明系統有man及info兩個常見的指令； 
    • man page說明後面的數字中，1代表一般帳號可用指令，8代表系統管理員常用指令，5代表系統設定檔格式； 
    • info page可將一份說明文件拆成多個節點(node)顯示，並具有類似超連結的功能，增加易讀性； 
    • 系統需正確的關機比較不容易損壞，可使用shutdown, poweroff等指令關機。 
    • 
    • 4.7 本章習題 
    • 4.8 參考資料與延伸閱讀 

    為了讓Linux的視窗顯示效果更佳，很多團體開始發展桌面應用的環境，GNOME/KDE都是。 他們的目標就是發展出類似Windows桌面的一整套可以工作的桌面環境，他可以進行視窗的定位、放大、縮小、 同時還提供很多的桌面應用軟體。底下是KDE與GNOME的相關連結：
    http://www.kde.org/
    http://www.gnome.org/

    • 針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23877 


    • 第二部份：Linux檔案、目錄與磁碟格式 
    第二部分 Linux 檔案、目錄與磁碟格式

安裝完了 Linux 之後，接著下來自然就是要使用他了！我們在 開機與關機及簡易指令操作 稍微說明了指令下達的方法，以及指令線上查詢的方式， 因此您可以輕易的使用指令列模式來進行諸多的動作與工作。那麼接著下來呢？當然就是想要知道 Linux 裡面有什麼東西囉，所以，在這一個部分當中，我們將介紹 Linux 最基本的檔案權限概念， 與每個檔案目錄所帶有的意涵。

當然囉，要瞭解權限的概念，那麼對於不同的『身份』就需要瞭解一下才行， 不同的身份的人，所建立的或擁有的檔案是否會相同呢？例如系統管理員與一般身份使用者的檔案？ 當然不太一樣！除此之外，如果您的硬碟空間不足，需要增加硬碟時，應該要如何新增呢？ 還有，記憶體不足的情況下，有沒有增進虛擬記憶體容量的方法？在接下來的幾個章節之中，我們將介紹 Linux 主要的檔案架構、以及磁碟在 Linux 當中該如何使用及掛載等問題。

    • 第五章、Linux 的檔案權限與目錄配置
最近更新日期：2015/06/03 
Linux最優秀的地方之一就在於他的多人多工環境。而為了讓各個使用者具有較保密的檔案資料，因此檔案的權限管理就變的很重要了。 Linux一般將檔案可存取的身份分為三個類別，分別是 owner/group/others，且三種身份各有 read/write/execute 等權限。若管理不當，你的Linux主機將會變的很『不蘇湖！@_@』。另外，你如果首次接觸Linux的話，那麼， 在Linux底下這麼多的目錄/檔案，到底每個目錄/檔案代表什麼意義呢？底下我們就來一一介紹呢！
    • 5.1 使用者與群組
    • 5.2 Linux檔案權限概念
        ◦ 5.2.1 Linux檔案屬性, 改變語系的 locale 
        ◦ 5.2.2 如何改變檔案屬性與權限： chgrp, chown, chmod 
        ◦ 5.2.3 目錄與檔案之權限意義：, 資料夾與抽屜, 各項動作所需最小權限 
        ◦ 5.2.4 Linux檔案種類與副檔名 
    • 5.3 Linux目錄配置 
        ◦ 5.3.1 Linux目錄配置的依據--FHS：/, /usr, /var 
        ◦ 5.3.2 目錄樹(directory tree) 
        ◦ 5.3.3 絕對路徑與相對路徑 
        ◦ 5.3.4 CentOS 的觀察： lsb_release 
    • 5.4 重點回顧 
    • 5.4 重點回顧
    • Linux的每個檔案中，可分別給予擁有者、群組與其他人三種身份個別的 rwx 權限； 
    • 群組最有用的功能之一，就是當你在團隊開發資源的時候，且每個帳號都可以有多個群組的支援； 
    • 利用ls -l顯示的檔案屬性中，第一個欄位是檔案的權限，共有十個位元，第一個位元是檔案類型， 接下來三個為一組共三組，為擁有者、群組、其他人的權限，權限有r,w,x三種； 
    • 如果檔名之前多一個『 . 』，則代表這個檔案為『隱藏檔』； 
    • 若需要root的權限時，可以使用 su - 這個指令來切換身份。處理完畢則使用 exit 離開 su 的指令環境。 
    • 更改檔案的群組支援可用chgrp，修改檔案的擁有者可用chown，修改檔案的權限可用chmod 
    • chmod修改權限的方法有兩種，分別是符號法與數字法，數字法中r,w,x分數為4,2,1； 
    • 對檔案來講，權限的效能為： 
        ◦ r：可讀取此一檔案的實際內容，如讀取文字檔的文字內容等； 
        ◦ w：可以編輯、新增或者是修改該檔案的內容(但不含刪除該檔案)； 
        ◦ x：該檔案具有可以被系統執行的權限。
    • 對目錄來說，權限的效能為： 
        ◦ r (read contents in directory) 
        ◦ w (modify contents of directory) 
        ◦ x (access directory)
    • 要開放目錄給任何人瀏覽時，應該至少也要給予r及x的權限，但w權限不可隨便給； 
    • 能否讀取到某個檔案內容，跟該檔案所在的目錄權限也有關係 (目錄至少需要有 x 的權限)。 
    • Linux檔名的限制為：單一檔案或目錄的最大容許檔名為 255 個英文字元或 128 個中文字元； 
    • 根據FHS的官方文件指出， 他們的主要目的是希望讓使用者可以瞭解到已安裝軟體通常放置於那個目錄下 
    • FHS訂定出來的四種目錄特色為：shareable, unshareable, static, variable等四類； 
    • FHS所定義的三層主目錄為：/, /var, /usr三層而已； 
    • 絕對路徑檔名為從根目錄 / 開始寫起，否則都是相對路徑的檔名。 
    • 
    • 5.5 本章練習 
    • 5.6 參考資料與延伸閱讀 

    註1：各種檔案系統的檔名長度限制，維基百科： http://en.wikipedia.org/wiki/Comparison_of_file_systems
    註2：FHS 標準的相關說明：
    維基百科簡易說明： http://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard
    FHS 2.3 (2004 年版)的標準文件：http://www.pathname.com/fhs/pub/fhs-2.3.html
    FHS 3.0 (2015 年版)的標準文件：http://refspecs.linuxfoundation.org/FHS_3.0/fhs-3.0.pdf
    關於 Journaling 日誌式文章的相關說明 http://www.linuxplanet.com/linuxplanet/reports/3726/1/

    • 針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23878 


    • 第六章、Linux 檔案與目錄管理
最近更新日期：2015/06/24 
在前一章我們認識了Linux系統下的檔案權限概念以及目錄的配置說明。 在這個章節當中，我們就直接來進一步的操作與管理檔案及目錄吧！包括在不同的目錄間變換、 建立與刪除目錄、建立與刪除檔案，還有尋找檔案、查閱檔案內容等等，都會在這個章節作個簡單的介紹啊！
    • 6.1 目錄與路徑 
        ◦ 6.1.1 相對路徑與絕對路徑 
        ◦ 6.1.2 目錄的相關操作： cd, pwd, mkdir, rmdir 
        ◦ 6.1.3 關於執行檔路徑的變數： $PATH 
    • 6.2 檔案與目錄管理 
        ◦ 6.2.1 檔案與目錄的檢視： ls 
        ◦ 6.2.2 複製、刪除與移動： cp, rm, mv 
        ◦ 6.2.3 取得路徑的檔案名稱與目錄名稱 
    • 6.3 檔案內容查閱 
        ◦ 6.3.1 直接檢視檔案內容： cat, tac, nl 
        ◦ 6.3.2 可翻頁檢視： more, less 
        ◦ 6.3.3 資料擷取： head, tail 
        ◦ 6.3.4 非純文字檔： od 
        ◦ 6.3.5 修改檔案時間與建置新檔： touch 
    • 6.4 檔案與目錄的預設權限與隱藏權限 
        ◦ 6.4.1 檔案預設權限：umask 
        ◦ 6.4.2 檔案隱藏屬性： chattr, lsattr
        ◦ 6.4.3 檔案特殊權限：SUID, SGID, SBIT, 權限設定
        ◦ 6.4.4 觀察檔案類型：file
    • 6.5 指令與檔案的搜尋 
        ◦ 指令檔名的搜尋：which 
        ◦ 檔案檔名的搜尋：whereis, locate / updatedb, find 
    • 6.6 極重要的複習！權限與指令間的關係 
我們知道權限對於使用者帳號來說是非常重要的，因為他可以限制使用者能不能讀取/建立/刪除/修改檔案或目錄！ 在這一章我們介紹了很多檔案系統的管理指令，第五章則介紹了很多檔案權限的意義。在這個小節當中， 我們就將這兩者結合起來，說明一下什麼指令在什麼樣的權限下才能夠運作吧！^_^

一、讓使用者能進入某目錄成為『可工作目錄』的基本權限為何：

可使用的指令：例如 cd 等變換工作目錄的指令；
目錄所需權限：使用者對這個目錄至少需要具有 x 的權限
額外需求：如果使用者想要在這個目錄內利用 ls 查閱檔名，則使用者對此目錄還需要 r 的權限。
二、使用者在某個目錄內讀取一個檔案的基本權限為何？

可使用的指令：例如本章談到的 cat, more, less等等
目錄所需權限：使用者對這個目錄至少需要具有 x 權限；
檔案所需權限：使用者對檔案至少需要具有 r 的權限才行！
三、讓使用者可以修改一個檔案的基本權限為何？

可使用的指令：例如 nano 或未來要介紹的 vi 編輯器等；
目錄所需權限：使用者在該檔案所在的目錄至少要有 x 權限；
檔案所需權限：使用者對該檔案至少要有 r, w 權限
四、讓一個使用者可以建立一個檔案的基本權限為何？

目錄所需權限：使用者在該目錄要具有 w,x 的權限，重點在 w 啦！
五、讓使用者進入某目錄並執行該目錄下的某個指令之基本權限為何？

目錄所需權限：使用者在該目錄至少要有 x 的權限；
檔案所需權限：使用者在該檔案至少需要有 x 的權限

    • 6.7 重點回顧 
絕對路徑：『一定由根目錄 / 寫起』；相對路徑：『不由 / 寫起，而是由相對當前目錄寫起』
特殊目錄有：., .., -, ~, ~account需要注意；
與目錄相關的指令有：cd, mkdir, rmdir, pwd 等重要指令；
rmdir 僅能刪除空目錄，要刪除非空目錄需使用『 rm -r 』指令；
使用者能使用的指令是依據 PATH 變數所規定的目錄去搜尋的；
ls 可以檢視檔案的屬性，尤其 -d, -a, -l 等選項特別重要！
檔案的複製、刪除、移動可以分別使用：cp, rm , mv等指令來操作；
檢查檔案的內容(讀檔)可使用的指令包括有：cat, tac, nl, more, less, head, tail, od 等
cat -n 與 nl 均可顯示行號，但預設的情況下，空白行會不會編號並不相同；
touch 的目的在修改檔案的時間參數，但亦可用來建立空檔案；
一個檔案記錄的時間參數有三種，分別是 access time(atime), status time (ctime), modification time(mtime)，ls 預設顯示的是 mtime。
除了傳統的rwx權限之外，在Ext2/Ext3/Ext4/xfs檔案系統中，還可以使用chattr與lsattr設定及觀察隱藏屬性。 常見的包括只能新增資料的 +a 與完全不能更動檔案的 +i 屬性。
新建檔案/目錄時，新檔案的預設權限使用 umask 來規範。預設目錄完全權限為drwxrwxrwx， 檔案則為-rw-rw-rw-。
檔案具有SUID的特殊權限時，代表當使用者執行此一binary程式時，在執行過程中使用者會暫時具有程式擁有者的權限
目錄具有SGID的特殊權限時，代表使用者在這個目錄底下新建的檔案之群組都會與該目錄的群組名稱相同。
目錄具有SBIT的特殊權限時，代表在該目錄下使用者建立的檔案只有自己與root能夠刪除！
觀察檔案的類型可以使用 file 指令來觀察；
搜尋指令的完整檔名可用 which 或 type ，這兩個指令都是透過 PATH 變數來搜尋檔名；
搜尋檔案的完整檔名可以使用 whereis 找特定目錄或 locate 到資料庫去搜尋，而不實際搜尋檔案系統；
利用 find 可以加入許多選項來直接查詢檔案系統，以獲得自己想要知道的檔名。
    • 6.8 本章習題 
    • 6.9 參考資料與延伸閱讀 

    小洲大大回答 SUID/SGID 的一篇討論：
    http://phorum.vbird.org/viewtopic.php?t=20256

    • 針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23879 
    • 


    第七章、Linux 磁碟與檔案系統管理
最近更新日期：2017/09/04
系統管理員很重要的任務之一就是管理好自己的磁碟檔案系統，每個分割槽不可太大也不能太小， 太大會造成磁碟容量的浪費，太小則會產生檔案無法儲存的困擾。此外，我們在前面幾章談到的檔案權限與屬性中， 這些權限與屬性分別記錄在檔案系統的哪個區塊內？這就得要談到 filesystem 中的 inode 與 block 了。同時，為了虛擬化與大容量磁碟， 現在的 CentOS 7 預設使用大容量效能較佳的 xfs 當預設檔案系統了！這也得了解一下。 在本章我們的重點在於如何製作檔案系統，包括分割、格式化與掛載等，是很重要的一個章節喔！

7.1 認識 Linux 檔案系統
7.1.1 磁碟組成與分割的複習
7.1.2 檔案系統特性： 索引式檔案系統
7.1.3 Linux 的 EXT2 檔案系統(inode): data block, inode table, superblock, dumpe2fs
7.1.4 與目錄樹的關係
7.1.5 EXT2/EXT3 檔案的存取與日誌式檔案系統的功能
7.1.6 Linux 檔案系統的運作
7.1.7 掛載點的意義 (mount point)
7.1.8 其他 Linux 支援的檔案系統與 VFS
7.1.9 XFS 檔案系統簡介： xfs_info
7.2 檔案系統的簡單操作
7.2.1 磁碟與目錄的容量： df, du
7.2.2 實體連結與符號連結： ln
7.3 磁碟的分割、格式化、檢驗與掛載
7.3.1 觀察磁碟分割狀態：, lsblk, blkid, parted
7.3.2 磁碟分割 gdisk/fdisk： gdisk, partprobe, fdisk
7.3.3 磁碟格式化(建置檔案系統)： mkfs.xfs, mkfs.xfs for raid, mkfs.ext4, mkfs
7.3.4 檔案系統檢驗： xfs_repair, fsck.ext4
7.3.5 檔案系統掛載與卸載： mount, umount
7.3.6 磁碟/檔案系統參數修訂： mknod, xfs_admin, uuidgen, tune2fs
7.4 設定開機掛載
7.4.1 開機掛載 /etc/fstab 及 /etc/mtab
7.4.2 特殊裝置 loop 掛載(映象檔不燒錄就掛載使用)： 掛載DVD, 大型檔案, dd
7.5 記憶體置換空間(swap)之建置
7.5.1 使用實體分割槽建置swap： mkswap, free, swapon, swapoff
7.5.2 使用檔案建置swap
7.6 檔案系統的特殊觀察與操作
7.6.1 磁碟空間之浪費問題
7.6.2 利用 GNU 的 parted 進行分割行為 (Optional)
7.7 重點回顧

    一個可以被掛載的資料通常稱為『檔案系統, filesystem』而不是分割槽 (partition) 喔！
    基本上 Linux 的傳統檔案系統為 Ext2 ，該檔案系統內的資訊主要有：
        superblock：記錄此 filesystem 的整體資訊，包括inode/block的總量、使用量、剩餘量， 以及檔案系統的格式與相關資訊等；
        inode：記錄檔案的屬性，一個檔案佔用一個inode，同時記錄此檔案的資料所在的block 號碼；
        block：實際記錄檔案的內容，若檔案太大時，會佔用多個 block 。
    Ext2 檔案系統的資料存取為索引式檔案系統(indexed allocation)
    需要磁碟重組的原因就是檔案寫入的 block 太過於離散了，此時檔案讀取的效能將會變的很差所致。 這個時候可以透過磁碟重組將同一個檔案所屬的 blocks 彙整在一起。
    Ext2檔案系統主要有：boot sector, superblock, inode bitmap, block bitmap, inode table, data block 等六大部分。
    data block 是用來放置檔案內容資料地方，在 Ext2 檔案系統中所支援的 block 大小有 1K, 2K 及 4K 三種而已
    inode 記錄檔案的屬性/權限等資料，其他重要項目為： 每個 inode 大小均為固定，有 128/256bytes 兩種基本容量。每個檔案都僅會佔用一個 inode 而已； 因此檔案系統能夠建立的檔案數量與 inode 的數量有關；
    檔案的 block 在記錄檔案的實際資料，目錄的 block 則在記錄該目錄底下檔名與其 inode 號碼的對照表；
    日誌式檔案系統 (journal) 會多出一塊記錄區，隨時記載檔案系統的主要活動，可加快系統復原時間；
    Linux 檔案系統為增加效能，會讓主記憶體作為大量的磁碟快取；
    實體連結只是多了一個檔名對該 inode 號碼的連結而已；
    符號連結就類似Windows的捷徑功能。
    磁碟的使用必需要經過：分割、格式化與掛載，分別慣用的指令為：gdisk, mkfs, mount三個指令
    分割時，應使用 parted 檢查分割表格式，再判斷使用 fdisk/gdisk 來分割，或直接使用 parted 分割
    為了考慮效能，XFS 檔案系統格式化時，可以考慮加上 agcount/su/sw/extsize 等參數較佳
    如果磁碟已無未分割的容量，可以考慮使用大型檔案取代磁碟裝置的處理方式，透過 dd 與格式化功能。
    開機自動掛載可參考/etc/fstab之設定，設定完畢務必使用 mount -a 測試語法正確否；


7.8 本章習題 - 第一題一定要做
7.9 參考資料與延伸閱讀

    註1：根據The Linux Document Project的文件所繪製的圖示，詳細的參考文獻可以參考如下連結：
    Filesystem How-To: http://tldp.org/HOWTO/Filesystems-HOWTO-6.html
    註2：參考維基百科所得資料，連結網址如下：
    條目： Ext2 介紹 http://en.wikipedia.org/wiki/Ext2
    註3：PAVE為一套秀圖軟體，常應用於數值模式的輸出檔案之再處理：
    PAVE 使用手冊： http://www.ie.unc.edu/cempd/EDSS/pave_doc/index.shtml
    註4：詳細的 inode 表格所定義的旗標可以參考如下連結：
    John's spec of the second extended filesystem: http://uranus.it.swin.edu.au/~jn/explore2fs/es2fs.htm
    註5：其他值得參考的 Ext2 相關檔案系統文章之連結如下：
        『Design and Implementation of the Second Extended Filesystem 』http://e2fsprogs.sourceforge.net/ext2intro.html
        Whitepaper: Red Hat's New Journaling File System: ext3: http://www.redhat.com/support/wpapers/redhat/ext3/
        The Second Extended File System - An introduction: http://www.freeos.com/articles/3912/
        ext3 or ReiserFS? Hans Reiser Says Red Hat's Move Is Understandable http://www.linuxplanet.com/linuxplanet/reports/3726/1/
        檔案系統的比較：維基百科：http://en.wikipedia.org/wiki/Comparison_of_file_systems
        Ext2/Ext3 檔案系統：http://linux.vbird.org/linux_basic/1010appendix_B.php
    註6：參考資料為：
        man xfs 詳細內容
        xfs 官網：http://xfs.org/docs/xfsdocs-xml-dev/XFS_User_Guide/tmp/en-US/html/index.html
    註7：計算 RAID 的 sunit 與 swidth 的方式：
        計算 sunit 與 swidth 的方法： http://xfs.org/index.php/XFS_FAQ
        計算 raid 與 sunit/swidth 部落客： http://blog.tsunanet.net/2011/08/mkfsxfs-raid10-optimal-performance.html
    註8： Linux 核心所支援的硬體之裝置代號(Major, Minor)查詢：
    https://www.kernel.org/doc/Documentation/devices.txt
    註9：與 Boot sector 及 Superblock 的探討有關的討論文章：
    The Second Extended File System: http://www.nongnu.org/ext2-doc/ext2.html
    Rob's ext2 documentation: http://www.landley.net/code/toybox/ext2.html

針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23881

第八章、檔案與檔案系統的壓縮,打包與備份
最近更新日期：2015/07/16

在 Linux 底下有相當多的壓縮指令可以運作喔！這些壓縮指令可以讓我們更方便從網路上面下載容量較大的檔案呢！ 此外，我們知道在 Linux 底下的副檔名是沒有什麼很特殊的意義的，不過，針對這些壓縮指令所做出來的壓縮檔， 為了方便記憶，還是會有一些特殊的命名方式啦！就讓我們來看看吧！

    8.1 壓縮檔案的用途與技術
    8.2 Linux 系統常見的壓縮指令
        8.2.1 gzip, zcat/zmore/zless/zgrep
        8.2.2 bzip2, bzcat/bzmore/bzless/bzgrep
        8.2.3 xz, xzcat/xzmore/xzless/xzgrep
    8.3 打包指令: tar, 解壓後的 SELinux 課題
    8.4 XFS 檔案系統的備份與還原
        8.4.1 XFS 檔案系統備份 xfsdump
        8.4.2 XFS 檔案系統還原 xfsrestore
    8.5 光碟寫入工具
        8.5.1 mkisofs：建立映像檔： isoinfo
        8.5.2 cdrecord：光碟燒錄工具
    8.6 其他常見的壓縮與備份工具
        8.6.1 dd
        8.6.2 cpio
    8.7 重點回顧

    壓縮指令為透過一些運算方法去將原本的檔案進行壓縮，以減少檔案所佔用的磁碟容量。 壓縮後與壓縮前的檔案所佔用的磁碟容量比值， 就可以被稱為是『壓縮比』
    壓縮的好處是可以減少磁碟容量的浪費，在 WWW 網站也可以利用檔案壓縮的技術來進行資料的傳送，好讓網站頻寬的可利用率上升喔
    壓縮檔案的副檔名大多是：『*.gz, *.bz2, *.xz, *.tar, *.tar.gz, *.tar.bz2, *.tar.xz』
    常見的壓縮指令有 gzip, bzip2, xz。壓縮率最佳的是 xz，若可以不計時間成本，建議使用 xz 進行壓縮。
    tar 可以用來進行檔案打包，並可支援 gzip, bzip2, xz 的壓縮。
    壓　縮：tar -Jcv -f filename.tar.xz 要被壓縮的檔案或目錄名稱
    查　詢：tar -Jtv -f filename.tar.xz
    解壓縮：tar -Jxv -f filename.tar.xz -C 欲解壓縮的目錄
    xfsdump 指令可備份檔案系統或單一目錄
    xfsdump 的備份若針對檔案系統時，可進行 0-9 的 level 差異備份！其中 level 0 為完整備份；
    xfsrestore 指令可還原被 xfsdump 建置的備份檔；
    要建立光碟燒錄資料時，可透過 mkisofs 指令來建置；
    可透過 wodim 來寫入 CD 或 DVD 燒錄機
    dd 可備份完整的 partition 或 disk ，因為 dd 可讀取磁碟的 sector 表面資料
    cpio 為相當優秀的備份指令，不過必須要搭配類似 find 指令來讀入欲備份的檔名資料，方可進行備份動作。

    8.8 本章習題
    8.9 參考資料與延伸閱讀

    台灣學術網路管理文件：Backup Tools in UNIX(Linux):
    http://nmc.nchu.edu.tw/tanet/backup_tools_in_unix.htm
    中文 How to 文件計畫 (CLDP)：http://www.linux.org.tw/CLDP/HOWTO/hardware/CD-Writing-HOWTO/CD-Writing-HOWTO-3.html
    熊寶貝工作記錄之： Linux 燒錄實作：http://csc.ocean-pioneer.com/docum/linux_burn.html
    PHP5 網管實驗室： http://www.php5.idv.tw/html.php?mod=article&do=show&shid=26
    CentOS 7.x 之 man xfsdump
    CentOS 7.x 之 man xfsrestore

    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23882


    • 第三部份：學習Shell與Shell Scripts 
    第三部分：學習 Shell 與 Shell scripts

瞭解了基本的 Linux 檔案屬性與目錄的配置之後，在進入更深入的 Linux 世界之前，有幾個課題還是一定要知道的，那就是我們所使用的這個文字模式介面，也就是所謂的『Shell』這個咚咚。在 Linux 的世界中，使用的是 GNU 發展出來的強化的第二代 shell ，稱為 BASH Shell ，他有什麼特異功能呢？簡單的說，我們之前下達的幾個指令都是 bash 管理的，除此之外， 他還可以記錄指令、檔案或命令的補全功能、環境變數的使用等等，還有很多功能等著你去發掘呢！

在知道了部分的 bash 功能後，在接著下來，我們還得瞭解一下什麼是資料流重導向？還有常規表示法等等的問題， 這都是未來我們系統管理員在管理主機上面，一個不可缺乏的利器！當然囉，要將這些功能整合起來運用的話， 就不能不學習一下所謂的腳本『 shell scripts 』，他具有基礎的程式能力( Program )，當真是個管理系統的好幫手呢！

再來，在未來的架站設定當中，常會使用到文字編輯器來編輯參數設定檔，這個時候， 系統管理員至少務必要熟悉一套文字介面下的文書編輯軟體，當然不限制哪一套軟體啦，但是 vi 是最標準的 Unix-Like 的文字介面之文書處理軟體，所以，我們幾乎一定可以在每部 Unix-Like 上面發現他的蹤跡，所以，就來瞭解他一下吧，這也是挺重要的工作呢！

第九章、vim 程式編輯器
最近更新日期：2015/07/07

系統管理員的重要工作就是得要修改與設定某些重要軟體的設定檔，因此至少得要學會一種以上的文字介面的文書編輯器。 在所有的 Linux distributions 上頭都會有的一套文書編輯器就是 vi ，而且很多軟體預設也是使用 vi 做為他們編輯的介面， 因此鳥哥建議您務必要學會使用 vi 這個正規的文書編輯器。此外，vim 是進階版的 vi ， vim 不但可以用不同顏色顯示文字內容，還能夠進行諸如 shell script, C program 等程式編輯功能， 你可以將 vim 視為一種程式編輯器！鳥哥也是用 vim 編輯鳥站的網頁文章呢！ ^_^

    9.1 vi 與 vim
        9.1.1 為何要學 vim
    9.2 vi 的使用
        9.2.1 簡易執行範例
        9.2.2 按鍵說明
        9.2.3 一個案例的練習
        9.2.4 vim 的暫存檔、救援回復與開啟時的警告訊息
    9.3 vim 的額外功能
        9.3.1 區塊選擇(Visual Block)
        9.3.2 多檔案編輯
        9.3.3 多視窗功能
        9.3.4 vim 的挑字補全功能
        9.3.5 vim 環境設定與記錄： ~/.vimrc, ~/.viminfo
        9.3.6 vim 常用指令示意圖
    9.4 其他 vim 使用注意事項
        9.4.1 中文編碼的問題
        9.4.2 DOS 與 Linux 的斷行字元： dos2unix, unix2dos
        9.4.3 語系編碼轉換： iconv
    9.5 重點回顧

    Linux 底下的設定檔多為文字檔，故使用 vim 即可進行設定編輯；
    vim 可視為程式編輯器，可用以編輯 shell script, 設定檔等，避免打錯字；
    vi 為所有 unix like 的作業系統都會存在的編輯器，且執行速度快速；
    vi 有三種模式，一般指令模式可變換到編輯與指令列模式，但編輯模式與指令列模式不能互換；
    常用的按鍵有i, [Esc], :wq 等；
    vi 的畫面大略可分為兩部份，(1)上半部的本文與(2)最後一行的狀態+指令列模式；
    數字是有意義的，用來說明重複進行幾次動作的意思，如 5yy 為複製 5 列之意；
    游標的移動中，大寫的 G 經常使用，尤其是 1G, G 移動到文章的頭/尾功能！
    vi 的取代功能也很棒！ :n1,n2s/old/new/g 要特別注意學習起來；
    小數點『 . 』為重複進行前一次動作，也是經常使用的按鍵功能！
    進入編輯模式幾乎只要記住： i, o, R 三個按鈕即可！尤其是新增一列的 o 與取代的 R
    vim 會主動的建立 swap 暫存檔，所以不要隨意斷線！
    如果在文章內有對齊的區塊，可以使用 [ctrl]-v 進行複製/貼上/刪除的行為
    使用 :sp 功能可以分割視窗
    若使用 vim 來撰寫網頁，若需要 CSS 元素資料，可透過 [ctrl]+x, [ctrl]+o 這兩個連續組合按鍵來取得關鍵字
    vim 的環境設定可以寫入在 ~/.vimrc 檔案中；
    可以使用 iconv 進行檔案語系編碼的轉換
    使用 dos2unix 及 unix2dos 可以變更檔案每一列的行尾斷行字元。

    9.6 本章習題
    9.7 參考資料與延伸閱讀

    註1：常見文書編輯器專案計畫連結：
        emacs: http://www.gnu.org/software/emacs/
        pico: https://en.wikipedia.org/wiki/Pico_(text_editor)
        nano: http://sourceforge.net/projects/nano/
        joe: http://sourceforge.net/projects/joe-editor/
        vim: http://www.vim.org
        常見文書編輯器比較：http://encyclopedia.thefreedictionary.com/List+of+text+editors
        維基百科的文書編輯器比較：http://en.wikipedia.org/wiki/Comparison_of_text_editors
    維基百科：ASCII 的代碼與圖示對應表：http://zh.wikipedia.org/wiki/ASCII
    關於 vim 是什麼的『中文』說明：http://www.vim.org/6k/features.zh.txt。
    vim 補齊功能介紹：http://www.openfoundry.org/en/tech-column/2215

    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23883

第十章、認識與學習BASH
最近更新日期：2015/07/09

在 Linux 的環境下，如果你不懂 bash 是什麼，那麼其他的東西就不用學了！因為前面幾章我們使用終端機下達指令的方式， 就是透過 bash 的環境來處理的喔！所以說，他很重要吧！bash 的東西非常的多，包括變數的設定與使用、 bash 操作環境的建置、資料流重導向的功能，還有那好用的管線命令！好好清一清腦門，準備用功去囉～ ^_^ 這個章節幾乎是所有指令列模式 (command line) 與未來主機維護與管理的重要基礎，一定要好好仔細的閱讀喔！

    10.1 認識 BASH 這個 Shell
        10.1.1 硬體、核心與 Shell
        10.1.2 為何要學文字介面的 shell
        10.1.3 系統的合法 shell 與 /etc/shells 功能
        10.1.4 Bash shell 的功能
        10.1.5 查詢指令是否為 Bash shell 的內建命令： type
        10.1.6 指令的下達與快速編輯按鈕
    10.2 Shell 的變數功能
        10.2.1 什麼是變數？
        10.2.2 變數的取用與設定：echo, 變數設定規則, unset
        10.2.3 環境變數的功能： env 與常見環境變數說明, set, export
        10.2.4 影響顯示結果的語系變數 (locale)
        10.2.5 變數的有效範圍
        10.2.6 變數鍵盤讀取、陣列與宣告： read, declare, array
        10.2.7 與檔案系統及程序的限制關係： ulimit
        10.2.8 變數內容的刪除、取代與替換 (Optional)：, 刪除與取代, 測試與替換
    10.3 命令別名與歷史命令
        10.3.1 命令別名設定： alias, unalias
        10.3.2 歷史命令： history, HISTSIZE
    10.4 Bash shell 的操作環境
        10.4.1 路徑與指令搜尋順序
        10.4.2 bash 的進站與歡迎訊息： /etc/issue, /etc/motd
        10.4.3 環境設定檔: login, non-login shell, /etc/profile, ~/.bash_profile, source, ~/.bashrc
        10.4.4 終端機的環境設定： stty, set
        10.4.5 萬用字元與特殊符號
    10.5 資料流重導向 (Redirection)
        10.5.1 何謂資料流重導向？
        10.5.2 命令執行的判斷依據： ; , &&, ||
    10.6 管線命令 (pipe)
        10.6.1 擷取命令： cut, grep
        10.6.2 排序命令： sort, uniq, wc
        10.6.3 雙向重導向： tee
        10.6.4 字元轉換命令： tr, col, join, paste, expand
        10.6.5 分割命令： split
        10.6.6 參數代換： xargs
        10.6.7 關於減號 - 的用途
    10.7 重點回顧

    由於核心在記憶體中是受保護的區塊，因此我們必須要透過『 Shell 』將我們輸入的指令與 Kernel 溝通，好讓 Kernel 可以控制硬體來正確無誤的工作
    學習 shell 的原因主要有：文字介面的 shell 在各大 distribution 都一樣；遠端管理時文字介面速度較快； shell 是管理 Linux 系統非常重要的一環，因為 Linux 內很多控制都是以 shell 撰寫的。
    系統合法的 shell 均寫在 /etc/shells 檔案中；
    使用者預設登入取得的 shell 記錄於 /etc/passwd 的最後一個欄位；
    bash 的功能主要有：命令編修能力；命令與檔案補全功能；命令別名設定功能；工作控制、前景背景控制；程式化腳本；萬用字元
    type 可以用來找到執行指令為何種類型，亦可用於與 which 相同的功能；
    變數就是以一組文字或符號等，來取代一些設定或者是一串保留的資料
    變數主要有環境變數與自訂變數，或稱為全域變數與區域變數
    使用 env 與 export 可觀察環境變數，其中 export 可以將自訂變數轉成環境變數；
    set 可以觀察目前 bash 環境下的所有變數；
    $? 亦為變數，是前一個指令執行完畢後的回傳值。在 Linux 回傳值為 0 代表執行成功；
    locale 可用於觀察語系資料；
    可用 read 讓使用者由鍵盤輸入變數的值
    ulimit 可用以限制使用者使用系統的資源情況
    bash 的設定檔主要分為 login shell 與 non-login shell。login shell 主要讀取 /etc/profile 與 ~/.bash_profile， non-login shell 則僅讀取 ~/.bashrc
    在使用 vim 時，若不小心按了 [ctrl]+s 則畫面會被凍結。你可以使用 [ctrl]+q 來解除凍結
    萬用字元主要有： *, ?, [] 等等
    資料流重導向透過 >, 2>, < 之類的符號將輸出的資訊轉到其他檔案或裝置去；
    連續命令的下達可透過 ; && || 等符號來處理
    管線命令的重點是：『管線命令僅會處理 standard output，對於 standard error output 會予以忽略』 『管線命令必須要能夠接受來自前一個指令的資料成為 standard input 繼續處理才行。』
    本章介紹的管線命令主要有：cut, grep, sort, wc, uniq, tee, tr, col, join, paste, expand, split, xargs 等。

    10.8 本章習題
    10.9 參考資料與延伸閱讀

    註1：Webmin 的官方網站：http://www.webmin.com/
    註2：關於 shell 的相關歷史可以參考網路農夫兄所整理的優秀文章。不過由於網路農夫兄所建置的網站暫時關閉， 因此底下的連結為鳥哥到網路上找到的片段文章連結。若有任何侵權事宜，請來信告知，謝謝： http://linux.vbird.org/linux_basic/0320bash/csh/
    註3：使用 man bash，再以 PS1 為關鍵字去查詢，按下數次 n 往後查詢後，可以得到 PS1 的變數說明。
    在語系資料方面，i18n 是由一些 Linux distribution 貢獻者共同發起的大型計畫，目的在於讓眾多的 Linux distributions 能夠有良好的萬國碼 (Unicode) 語系的支援。詳細的資料可以參考：
        i18n 的 wiki 介紹：https://en.wikipedia.org/wiki/Internationalization_and_localization
        康橋大學 Dr Markus Kuhn 的文獻：http://www.cl.cam.ac.uk/~mgk25/unicode.html
        Debian 社群所寫的文件：http://www.debian.org/doc/manuals/intro-i18n/
    GNU 計畫的 BASH 說明：http://www.gnu.org/software/bash/manual/bash.html
    man bash

    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23884


第十一章、正規表示法與文件格式化處理
最近更新日期：2015/07/14

正規表示法 (Regular Expression, RE, 或稱為常規表示法)是透過一些特殊字元的排列，用以『搜尋/取代/刪除』一列或多列文字字串， 簡單的說，正規表示法就是用在字串的處理上面的一項『表示式』。正規表示法並不是一個工具程式， 而是一個字串處理的標準依據，如果您想要以正規表示法的方式處理字串，就得要使用支援正規表示法的工具程式才行， 這類的工具程式很多，例如 vi, sed, awk 等等。

正規表示法對於系統管理員來說實在是很重要！因為系統會產生很多的訊息，這些訊息有的重要有的僅是告知， 此時，管理員可以透過正規表示法的功能來將重要訊息擷取出來，並產生便於查閱的報表來簡化管理流程。此外， 很多的套裝軟體也都支援正規表示法的分析，例如郵件伺服器的過濾機制(過濾垃圾信件)就是很重要的一個例子。 所以，您最好要瞭解正規表示法的相關技能，在未來管理主機時，才能夠更精簡處理您的日常事務！

註：本章節使用者需要多加練習，因為目前很多的套件都是使用正規表示法來達成其『過濾、分析』的目的， 為了未來主機管理的便利性，使用者至少要能看的懂正規表示法的意義！

    11.1 開始之前：什麼是正規表示法
    11.2 基礎正規表示法
        11.2.1 語系對正規表示法的影響
        11.2.2 grep 的一些進階選項
        11.2.3 基礎正規表示法練習
        11.2.4 基礎正規表示法字符彙整(characters)
        11.2.5 sed 工具： 行的新增/刪除, 行的取代/顯示, 搜尋並取代, 直接改檔
    11.3 延伸正規表示法
    11.4 文件的格式化與相關處理
        11.4.1 printf： 格式化列印
        11.4.2 awk：好用的資料處理工具
        11.4.3 檔案比對工具：, diff, cmp, patch
        11.4.4 檔案列印準備工具： pr
    11.5 重點回顧

    正規表示法就是處理字串的方法，他是以行為單位來進行字串的處理行為；
    正規表示法透過一些特殊符號的輔助，可以讓使用者輕易的達到『搜尋/刪除/取代』某特定字串的處理程序；
    只要工具程式支援正規表示法，那麼該工具程式就可以用來作為正規表示法的字串處理之用；
    正規表示法與萬用字元是完全不一樣的東西！萬用字元 (wildcard) 代表的是 bash 操作介面的一個功能， 但正規表示法則是一種字串處理的表示方式！
    使用 grep 或其他工具進行正規表示法的字串比對時，因為編碼的問題會有不同的狀態，因此， 你最好將 LANG 等變數設定為 C 或者是 en 等英文語系！
    grep 與 egrep 在正規表示法裡面是很常見的兩支程式，其中， egrep 支援更嚴謹的正規表示法的語法；
    由於編碼系統的不同，不同的語系 (LANG) 會造成正規表示法擷取資料的差異。因此可利用特殊符號如 [:upper:] 來替代編碼範圍較佳；
    由於嚴謹度的不同，正規表示法之上還有更嚴謹的延伸正規表示法；
    基礎正規表示法的特殊字符有： *, ., [], [-], [^], ^, $ 等！
    常見的支援正規表示法的工具軟體有： grep , sed, vim 等等
    printf 可以透過一些特殊符號來將資料進行格式化輸出；
    awk 可以使用『欄位』為依據，進行資料的重新整理與輸出；
    文件的比對中，可利用 diff 及 cmp 進行比對，其中 diff 主要用在純文字檔案方面的新舊版本比對
    patch 指令可以將舊版資料更新到新版 (主要亦由 diff 建立 patch 的補丁來源檔案)

    11.6 本章習題
    11.7 參考資料與延伸閱讀

    註1：關於正規表示法與 POSIX 及特殊語法的參考網址可以查詢底下的來源：
    維基百科的說明：http://en.wikipedia.org/wiki/Regular_expression
    ZYTRAX 網站介紹：http://zytrax.com/tech/web/regex.htm
    註2：其他關於正規表示法的網站介紹：
    洪朝貴老師的網頁：http://www.cyut.edu.tw/~ckhung/b/re/index.php
    龍門少尉的窩：http://main.rtfiber.com.tw/~changyj/
    PCRE 官方網站：http://perldoc.perl.org/perlre.html
    註3：關於 ASCII 編碼對照表可參考維基百科的介紹：
    維基百科 (ASCII) 條目： http://zh.wikipedia.org/w/index.php?title=ASCII&variant=zh-tw
    註4：關於 awk 的進階文獻，包括有底下幾個連結：
    中研院計算中心 ASPAC 計畫之 awk 程式介紹： 鳥哥備份：http://linux.vbird.org/linux_basic/0330regularex/awk.pdf
    這份文件寫的非常棒！歡迎大家多多參考！
    Study Area：http://www.study-area.org/linux/system/linux_shell.htm

    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23885

第十二章、學習 Shell Scripts
最近更新日期：2017/03/29

如果你真的很想要走資訊這條路，並且想要管理好屬於你的主機，那麼，別說鳥哥不告訴你， 可以自動管理系統的好工具： Shell scripts！這傢伙真的是得要好好學習學習的！ 基本上， shell script 有點像是早期的批次檔，亦即是將一些指令彙整起來一次執行，但是 Shell script 擁有更強大的功能，那就是他可以進行類似程式 (program) 的撰寫，並且不需要經過編譯 (compile) 就能夠執行， 真的很方便。加上我們可透過 shell script 來簡化我們日常的工作管理， 而且，整個 Linux 環境中，一些服務 (services) 的啟動都是透過 shell script 的， 如果你對於 script 不瞭解，嘿嘿！發生問題時，可真是會求助無門喔！所以，好好的學一學他吧！

    12.1 什麼是 Shell Script
        12.1.1 幹嘛學習 shell scripts
        12.1.2 第一支 script 的撰寫與執行
        12.1.3 撰寫 shell script 的良好習慣建立
    12.2 簡單的 shell script 練習
        12.2.1 簡單範例： 對談式腳本, 隨日期變化, 數值運算, 計算 pi
        12.2.2 script 的執行方式差異 (source, sh script, ./script)
    12.3 善用判斷式
        12.3.1 利用 test 指令的測試功能
        12.3.2 利用判斷符號 [ ]
        12.3.3 Shell script 的預設變數($0, $1...)： shift
    12.4 條件判斷式
        12.4.1 利用 if .... then： 單層簡單條件, 多重複雜條件, 檢驗$1內容, 網路狀態, 退伍
        12.4.2 利用 case ..... esac 判斷
        12.4.3 利用 function 功能
    12.5 迴圈 (loop)
        12.5.1 while...do...done, until...do...done (不定迴圈)
        12.5.2 for...do...done (固定迴圈)： 帳號檢查, 網路狀態 $(seq )
        12.5.3 for...do...done 的數值處理
        12.5.4 搭配亂數與陣列的實驗
    12.6 shell script 的追蹤與 debug
    12.7 重點回顧

    shell script 是利用 shell 的功能所寫的一個『程式 (program)』，這個程式是使用純文字檔，將一些 shell 的語法與指令(含外部指令)寫在裡面， 搭配正規表示法、管線命令與資料流重導向等功能，以達到我們所想要的處理目的
    shell script 用在系統管理上面是很好的一項工具，但是用在處理大量數值運算上， 就不夠好了，因為 Shell scripts 的速度較慢，且使用的 CPU 資源較多，造成主機資源的分配不良。
    在 Shell script 的檔案中，指令的執行是從上而下、從左而右的分析與執行；
    shell script 的執行，至少需要有 r 的權限，若需要直接指令下達，則需要擁有 r 與 x 的權限；
    良好的程式撰寫習慣中，第一行要宣告 shell (#!/bin/bash) ，第二行以後則宣告程式用途、版本、作者等
    對談式腳本可用 read 指令達成；
    要建立每次執行腳本都有不同結果的資料，可使用 date 指令利用日期達成；
    script 的執行若以 source 來執行時，代表在父程序的 bash 內執行之意！
    若需要進行判斷式，可使用 test 或中括號 ( [] ) 來處理；
    在 script 內，$0, $1, $2..., $@ 是有特殊意義的！
    條件判斷式可使用 if...then 來判斷，若是固定變數內容的情況下，可使用 case $var in ... esac 來處理
    迴圈主要分為不定迴圈 (while, until) 以及固定迴圈 (for) ，配合 do, done 來達成所需任務！
    我們可使用 sh -x script.sh 來進行程式的 debug

    12.8 本章習題
    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23886



    • 第四部份：Linux使用者管理 
    第四部分：Linux 使用者管理

好了！終於要到了管理 Linux 帳號的時刻了！對於 Linux 有一定的熟悉度之後，再來就是要管理連上 Linux 的帳號問題了！這個帳號的問題可大可小啦！大到可以限制他使用 Linux 主機的各項資源，小到甚至一般帳號的密碼訂定規則都可以進行規定！端看您對於安全的需求啦！ 此外，如果站在資源平均分配的角度上，那麼 Linux 主機上面有限的資源當然是平均分配給大家比較好！這個時候就得來規定一下『誰可以使用多少的硬碟空間？』那就是 Quota 喔！呵呵！厲害吧！

在訂定完了一些帳號的規則之後，那麼我們就繼續來管理一下主機的系統與程序的管理吧！ 這個包括了觀察每個程序 (Process) 與工作排程及工作管理 ( jobs control )，這些也都是很重要的工作呢！

第十三章、Linux 帳號管理與 ACL 權限設定
最近更新日期：2015/07/27

要登入 Linux 系統一定要有帳號與密碼才行，否則怎麼登入，您說是吧？不過， 不同的使用者應該要擁有不同的權限才行吧？我們還可以透過 user/group 的特殊權限設定， 來規範出不同的群組開發專案呢～在 Linux 的環境下，我們可以透過很多方式來限制使用者能夠使用的系統資源， 包括 第十章、bash 提到的 ulimit 限制、還有特殊權限限制，如 umask 等等。 透過這些舉動，我們可以規範出不同使用者的使用資源。另外，還記得系統管理員的帳號嗎？對！ 就是 root 。請問一下，除了 root 之外，是否可以有其他的系統管理員帳號？ 為什麼大家都要盡量避免使用數字型態的帳號？如何修改使用者相關的資訊呢？這些我們都得要瞭解瞭解的！

    13.1 Linux 的帳號與群組
        13.1.1 使用者識別碼： UID 與 GID
        13.1.2 使用者帳號：/etc/passwd 檔案結構, /etc/shadow 檔案結構
        13.1.3 關於群組： /etc/group 檔案結構, 有效與初始群組, groups, newgrp, /etc/gshadow
    13.2 帳號管理
        13.2.1 新增與移除使用者： useradd, useradd 參考檔, passwd, chage, usermod, userdel
        13.2.2 使用者功能：id, finger, chfn, chsh
        13.2.3 新增與移除群組：groupadd, groupmod, groupdel, gpasswd 群組管理員
        13.2.4 帳號管理實例
        13.2.5 使用外部身份認證系統
    13.3 主機的細部權限規劃：ACL 的使用
        13.3.1 什麼是 ACL 與如何支援啟動 ACL
        13.3.2 ACL 的設定技巧： setfacl, getfacl, ACL 的設定(user, group mask, default)
    13.4 使用者身份切換
        13.4.1 su
        13.4.2 sudo： sudo 指令, visudo (/etc/sudoers) ( 帳號, 群組, 限制指令, 別名, 時間間隔, 配合 su)
    13.5 使用者的特殊 shell 與 PAM 模組
        13.5.1 特殊的 shell :/sbin/nologin, nologin.txt
        13.5.2 PAM 模組簡介
        13.5.3 PAM 模組設定語法：驗證類別(type)、控制標準(flag)、模組與參數
        13.5.4 常用模組簡介： securetty, nologin, pam_pwquality, login流程
        13.5.5 其他相關檔案： limits.conf
    13.6 Linux 主機上的使用者訊息傳遞
        13.6.1 查詢使用者： w, who, last, lastlog
        13.6.2 使用者對談： write, mesg, wall
        13.6.3 使用者郵件信箱： mail
    13.7 CentOS 7 環境下大量建置帳號的方法
        13.7.1 一些帳號相關的檢查工具：pwck, pwconv, pwunconv, chpasswd
        13.7.2 大量建置帳號範本(適用 passwd --stdin 選項)
    13.8 重點回顧

    Linux 作業系統上面，關於帳號與群組，其實記錄的是 UID/GID 的數字而已；
    使用者的帳號/群組與 UID/GID 的對應，參考 /etc/passwd 及 /etc/group 兩個檔案
    /etc/passwd 檔案結構以冒號隔開，共分為七個欄位，分別是『帳號名稱、密碼、UID、GID、全名、家目錄、shell』
    UID 只有 0 與非為 0 兩種，非為 0 則為一般帳號。一般帳號又分為系統帳號 (1~999) 及可登入者帳號 (大於 1000)
    帳號的密碼已經移動到 /etc/shadow 檔案中，該檔案權限為僅有 root 可以更動。該檔案分為九個欄位，內容為『 帳號名稱、加密密碼、密碼更動日期、密碼最小可變動日期、密碼最大需變動日期、密碼過期前警告日數、密碼失效天數、 帳號失效日、保留未使用』
    使用者可以支援多個群組，其中在新建檔案時會影響新檔案群組者，為有效群組。而寫入 /etc/passwd 的第四個欄位者， 稱為初始群組。
    與使用者建立、更改參數、刪除有關的指令為：useradd, usermod, userdel等，密碼建立則為 passwd；
    與群組建立、修改、刪除有關的指令為：groupadd, groupmod, groupdel 等；
    群組的觀察與有效群組的切換分別為：groups 及 newgrp 指令；
    useradd 指令作用參考的檔案有： /etc/default/useradd, /etc/login.defs, /etc/skel/ 等等
    觀察使用者詳細的密碼參數，可以使用『 chage -l 帳號 』來處理；
    使用者自行修改參數的指令有： chsh, chfn 等，觀察指令則有： id, finger 等
    ACL 的功能需要檔案系統有支援，CentOS 7 預設的 XFS 確實有支援 ACL 功能！
    ACL 可進行單一個人或群組的權限管理，但 ACL 的啟動需要有檔案系統的支援；
    ACL 的設定可使用 setfacl ，查閱則使用 getfacl ；
    身份切換可使用 su ，亦可使用 sudo ，但使用 sudo 者，必須先以 visudo 設定可使用的指令；
    PAM 模組可進行某些程式的驗證程序！與 PAM 模組有關的設定檔位於 /etc/pam.d/* 及 /etc/security/*
    系統上面帳號登入情況的查詢，可使用 w, who, last, lastlog 等；
    線上與使用者交談可使用 write, wall，離線狀態下可使用 mail 傳送郵件！


    13.9 本章習題
    13.10 參考資料與延伸閱讀

    註1：最完整與詳細的密碼檔說明，可參考各 distribution 內部的 man page。 本文中以 CentOS 7.x 的『 man 5 passwd 』及『 man 5 shadow 』的內容說明；
    註2：MD5, DES, SHA 均為加密的機制，詳細的解釋可參考維基百科的說明：
        MD5：http://zh.wikipedia.org/wiki/MD5
        DES：http://en.wikipedia.org/wiki/Data_Encryption_Standard
        SHA家族：https://en.wikipedia.org/wiki/Secure_Hash_Algorithm
    在早期的 Linux 版本中，主要使用 MD5 加密演算法，近期則使用 SHA512 作為預設演算法。
    註3：telnet 與 ssh 都是可以由遠端用戶主機連線到 Linux 伺服器的一種機制！詳細資料可查詢鳥站文章： 遠端連線伺服器：http://linux.vbird.org/linux_server/0310telnetssh.php
    註4：詳細的說明請參考 man sudo ，然後以 5 作為關鍵字搜尋看看即可瞭解。
    註5：詳細的 PAM 說明可以參考如下連結：
    維基百科：http://en.wikipedia.org/wiki/Pluggable_Authentication_Modules
    Linux-PAM網頁： http://www.kernel.org/pub/linux/libs/pam/


    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23887

第十四章、磁碟配額(Quota)與進階檔案系統管理
最近更新日期：2015/07/28

如果您的 Linux 伺服器有多個用戶經常存取資料時，為了維護所有使用者在硬碟容量的公平使用，磁碟配額 (Quota) 就是一項非常有用的工具！另外，如果你的用戶常常抱怨磁碟容量不夠用，那麼更進階的檔案系統就得要學習學習。 本章我們會介紹磁碟陣列 (RAID) 及邏輯捲軸檔案系統 (LVM)，這些工具都可以幫助你管理與維護使用者可用的磁碟容量喔！

    14.1 磁碟配額 (Quota) 的應用與實作
        14.1.1 什麼是 Quota： 一般用途, 限制, 規範 (inode/block, soft/hard, grace time)
        14.1.2 一個 XFS 檔案系統的 Quota 的實作範例
        14.1.3 實作 Quota 流程-1：檔案系統的支援與觀察 (/etc/fstab, /etc/mtab)
        14.1.4 實作 Quota 流程-2：觀察 Quota 報告資料 (xfs_quota, print, df, report, state)
        14.1.5 實作 Quota 流程-3：限制值設定方式 (limit, grace_time)
        14.1.6 實作 Quota 流程-4：project 的限制 (針對目錄限制) (Optional)
        14.1.7 XFS quota 的管理與額外指令對照表
        14.1.8 不更動既有系統的 Quota 實例
    14.2 軟體磁碟陣列 (Software RAID)
        14.2.1 什麼是 RAID： RAID-0, RAID-1, RAID1+0, RAID-5, Spare disk
        14.2.2 software, hardware RAID
        14.2.3 軟體磁碟陣列的設定： mdadm --create
        14.2.4 模擬 RAID 錯誤的救援模式： mdadm --manage
        14.2.5 開機自動啟動 RAID 並自動掛載
        14.2.6 關閉軟體 RAID(重要！)
    14.3 邏輯捲軸管理員 (Logical Volume Manager)
        14.3.1 什麼是 LVM： PV, PE, VG, LV 的意義
        14.3.2 LVM 實作流程： PV 階段, VG 階段, LV 階段, 檔案系統階段
        14.3.3 放大 LV 容量： xfs_growfs
        14.3.4 使用 LVM thin Volume 讓 LVM 動態自動調整磁碟使用率
        14.3.5 LVM 的磁碟快照： 建立傳統快照, 以快照還原, 用於測試環境
        14.3.6 LVM 相關指令彙整與 LVM 的關閉
    14.4 重點回顧

    Quota 可公平的分配系統上面的磁碟容量給使用者；分配的資源可以是磁碟容量(block)或可建立檔案數量(inode)；
    Quota 的限制可以有 soft/hard/grace time 等重要項目；
    Quota 是針對整個 filesystem 進行限制，XFS 檔案系統可以限制目錄！
    Quota 的使用必須要核心與檔案系統均支援。檔案系統的參數必須含有 usrquota, grpquota, prjquota
    Quota 的 xfs_quota 實作的指令有 report, print, limit, timer... 等指令；
    磁碟陣列 (RAID) 有硬體與軟體之分，Linux 作業系統可支援軟體磁碟陣列，透過 mdadm 套件來達成；
    磁碟陣列建置的考量依據為『容量』、『效能』、『資料可靠性』等；
    磁碟陣列所建置的等級常見有的 raid0, raid1, raid1+0, raid5 及 raid6
    硬體磁碟陣列的裝置檔名與 SCSI 相同，至於 software RAID 則為 /dev/md[0-9]
    軟體磁碟陣列的狀態可藉由 /proc/mdstat 檔案來瞭解；
    LVM 強調的是『彈性的變化檔案系統的容量』；
    與 LVM 有關的元件有： PV/VG/PE/LV 等元件，可以被格式化者為 LV
    新的 LVM 擁有 LVM thin volume 的功能，能夠動態調整磁碟的使用率！
    LVM 擁有快照功能，快照可以記錄 LV 的資料內容，並與原有的 LV 共享未更動的資料，備份與還原就變的很簡單；
    XFS 透過 xfs_growfs 指令，可以彈性的調整檔案系統的大小

    14.5 本章習題
    14.6 參考資料與延伸閱讀

    註1：相關的 XFS 檔案系統的 quota 說明，可以參考底下的文件：
        XFS 官網說明：http://xfs.org/docs/xfsdocs-xml-dev/XFS_User_Guide/tmp/en-US/html/xfs-quotas.html
    註2：若想對 RAID 有更深入的認識，可以參考底下的連結與書目：
    http://www.tldp.org/HOWTO/Software-RAID-HOWTO.html
    楊振和、『作業系統導論：第十一章』、學貫出版社，2006
    註3：詳細的 mdstat 說明也可以參考如下網頁：
    https://raid.wiki.kernel.org/index.php/Mdstat
    註4：徐秉義老師在網管人雜誌的文章，文章篇名分別是：
        磁碟管理：SoftRAID 與 LVM 綜合實做應用 (上)
        磁碟管理：SoftRAID 與 LVM 綜合實做應用 (下)
    目前文章已經找不到了～可能需要 google 一下舊文章的備份才能看到了！

    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23888

第十五章、例行性工作排程(crontab)
最近更新日期：2015/07/31

學習了基礎篇也一陣子了，你會發現到為什麼系統常常會主動的進行一些任務？這些任務到底是誰在設定工作的？ 如果你想要讓自己設計的備份程式可以自動的在系統底下執行，而不需要手動來啟動他，又該如何處置？ 這些例行的工作可能又分為『單一』工作與『循環』工作，在系統內又是哪些服務在負責？ 還有還有，如果你想要每年在老婆的生日前一天就發出一封信件提醒自己不要忘記，可以辦的到嗎？ 嘿嘿！這些種種要如何處理，就看看這一章先！

    15.1 什麼是例行性工作排程
        15.1.1 Linux 工作排程的種類： at, crontab
        15.1.2 CentOS Linux 系統上常見的例行性工作
    15.2 僅執行一次的工作排程
        15.2.1 atd 的啟動與 at 運作的方式： /etc/at.deny
        15.2.2 實際運作單一工作排程： at, atq & atrm, batch
    15.3 循環執行的例行性工作排程
        15.3.1 使用者的設定： /etc/cron.deny, crontab
        15.3.2 系統的設定檔： /etc/crontab, /etc/cron.d/*
        15.3.3 一些注意事項
    15.4 可喚醒停機期間的工作任務
        15.4.1 什麼是 anacron
        15.4.2 anacron 與 /etc/anacrontab
    15.5 重點回顧

    系統可以透過 at 這個指令來排程單一工作的任務！『at TIME』為指令下達的方法，當 at 進入排程後， 系統執行該排程工作時，會到下達時的目錄進行任務；
    at 的執行必須要有 atd 服務的支援，且 /etc/at.deny 為控制是否能夠執行的使用者帳號；
    透過 atq, atrm 可以查詢與刪除 at 的工作排程；
    batch 與 at 相同，不過 batch 可在 CPU 工作負載小於 0.8 時才進行後續的工作排程；
    系統的循環例行性工作排程使用 crond 這個服務，同時利用 crontab -e 及 /etc/crontab 進行排程的安排；
    crontab -e 設定項目分為六欄，『分、時、日、月、周、指令』為其設定依據；
    /etc/crontab 設定分為七欄，『分、時、日、月、周、執行者、指令』為其設定依據；
    anacron 配合 /etc/anacrontab 的設定，可以喚醒停機期間系統未進行的 crontab 任務！

    15.6 本章習題
    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23889

第十六章、程序管理與 SELinux 初探
最近更新日期：2016/10/24

一個程式被載入到記憶體當中運作，那麼在記憶體內的那個資料就被稱為程序(process)。程序是作業系統上非常重要的概念， 所有系統上面跑的資料都會以程序的型態存在。那麼系統的程序有哪些狀態？不同的狀態會如何影響系統的運作？ 程序之間是否可以互相控管等等的，這些都是我們所必須要知道的項目。 另外與程序有關的還有 SELinux 這個加強檔案存取安全性的咚咚，也必須要做個瞭解呢！

    16.1 什麼是程序 (Process)
        16.1.1 程序與程式 (process & program)： 子程序與父程序, fork-and-exec, 系統服務
        16.1.2 Linux 的多人多工環境
    16.2 工作管理 (job control)
        16.2.1 什麼是工作管理
        16.2.2 job control 的管理：&, [ctrl]-z, jobs, fg, bg, kill
        16.2.3 離線管理問題： nohup
    16.3 程序管理
        16.3.1 程序的觀察： ps (ps -l, ps aux, zombie), top, pstree
        16.3.2 程序的管理： signal, kill, killall
        16.3.3 關於程序的執行順序： priority, nice, renice
        16.3.4 系統資源的觀察： free, uname, uptime, netstat, dmesg, vmstat
    16.4 特殊檔案與程序
        16.4.1 具有 SUID/SGID 權限的指令執行狀態
        16.4.2 /proc/* 代表的意義
        16.4.3 查詢已開啟檔案或已執行程序開啟之檔案： fuser, lsof, pidof
    16.5 SELinux 初探
        16.5.1 什麼是 SELinux： 目標, DAC, MAC
        16.5.2 SELinux 的運作模式： 元件, 安全性本文, domain/type
        16.5.3 SELinux 三種模式的啟動、關閉與觀察： getenforce, sestatus, 啟動與關閉, setenforce
        16.5.4 SELinux 政策內的規則管理： getsebool, seinfo, sesearch, setsebool
        16.5.5 SELinux 安全本文的修改： chcon, restorecon, semanage
        16.5.6 一個網路服務案例及登錄檔協助： 所需服務, FTP 實例, 匿名者範例, 一般用戶家目錄, 非正規目錄, 非正規 port
    16.6 重點回顧

    程式 (program)：通常為 binary program ，放置在儲存媒體中 (如硬碟、光碟、軟碟、磁帶等)，為實體檔案的型態存在；
    程序 (process)：程式被觸發後，執行者的權限與屬性、程式的程式碼與所需資料等都會被載入記憶體中， 作業系統並給予這個記憶體內的單元一個識別碼 (PID)，可以說，程序就是一個正在運作中的程式。
    程式彼此之間是有相關性的，故有父程序與子程序之分。而 Linux 系統所有程序的父程序就是 systemd 這個 PID 為 1 號的程序。
    在 Linux 的程序呼叫通常稱為 fork-and-exec 的流程！程序都會藉由父程序以複製 (fork) 的方式產生一個一模一樣的子程序， 然後被複製出來的子程序再以 exec 的方式來執行實際要進行的程式，最終就成為一個子程序的存在。
    常駐在記憶體當中的程序通常都是負責一些系統所提供的功能以服務使用者各項任務，因此這些常駐程式就會被我們稱為：服務 (daemon)。
    在工作管理 (job control) 中，可以出現提示字元讓你操作的環境就稱為前景 (foreground)，至於其他工作就可以讓你放入背景 (background) 去暫停或運作。
    與 job control 有關的按鍵與關鍵字有： &, [ctrl]-z, jobs, fg, bg, kill %n 等；
    程序管理的觀察指令有： ps, top, pstree 等等；
    程序之間是可以互相控制的，傳遞的訊息 (signal) 主要透過 kill 這個指令在處理；
    程序是有優先順序的，該項目為 Priority，但 PRI 是核心動態調整的，使用者只能使用 nice 值去微調 PRI
    nice 的給予可以有： nice, renice, top 等指令；
    vmstat 為相當好用的系統資源使用情況觀察指令；
    SELinux 當初的設計是為了避免使用者資源的誤用，而 SELinux 使用的是 MAC 委任式存取設定；
    SELinux 的運作中，重點在於主體程序 (Subject) 能否存取目標檔案資源 (Object) ，這中間牽涉到政策 (Policy) 內的規則， 以及實際的安全性本文類別 (type)；
    安全性本文的一般設定為：『Identify:role:type』其中又以 type 最重要；
    SELinux 的模式有： enforcing, permissive, disabled 三種，而啟動的政策 (Policy) 主要是 targeted
    SELinux 啟動與關閉的設定檔在： /etc/selinux/config
    SELinux 的啟動與觀察： getenforce, sestatus 等指令
    重設 SELinux 的安全性本文可使用 restorecon 與 chcon
    在 SELinux 有啟動時，必備的服務至少要啟動 auditd 這個！
    若要管理預設的 SELinux 布林值，可使用 getsebool, setsebool 來管理！

    16.7 本章習題
    16.8 參考資料與延伸閱讀

    註1：關於 fork-and-exec 的說明可以參考如下網頁與書籍：
    吳賢明老師維護的網站：http://nmc.nchu.edu.tw/linux/process.htm
    楊振和、作業系統導論、第三章、學貫出版社
    註2：對 Linux 核心有興趣的話，可以先看看底下的連結：
    http://www.linux.org.tw/CLDP/OLD/INFO-SHEET-2.html
    註3：來自 Linux Journal 的關於 /proc 的說明：http://www.linuxjournal.com/article/177
    註4：關於 SELinux 相關的網站與文件資料：
    美國國家安全局的 SELinux 簡介：http://www.nsa.gov/research/selinux/
    陳永昇、『企業級Linux 系統管理寶典』、學貫行銷股份有限公司
    Fedora SELinux 說明：http://fedoraproject.org/wiki/SELinux/SecurityContext
    美國國家安全局對 SELinux 的白皮書：http://www.nsa.gov/research/_files/selinux/papers/module/t1.shtml

    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23890



    • 第五部份：Linux系統管理員 
    第五部分：Linux 系統管理員

嗯！終於來到系統管理員 ( root ) 要注意的工作事項之篇幅了！各位準系統管理員心理準備好了嗎？ 我們要管理機器囉，呵呵！那麼管理員的工作是什麼？看報喝茶？！沒錯！管理員最大的享受就是看報喝茶了。 一個好的系統管理員，平時不會希望掛載網站上面一再不斷的查詢、檢查漏洞等等的， 因為果真如此的話，那麼就表示『機器一定有問題了！』。為了讓我們的 Linux 機器跑得更穩更順暢，好讓我這個管理員有更多的時間去看報喝茶，哈哈！ 更深入的瞭解系統是需要的！所以，這一篇我們由開機關機的整體流程談起，好瞭解一下 Linux 在開機的過程中到底做了哪些事情，這樣才能知道我們在什麼時候應該做什麼事情吶！

此外，由於『沒有一個套件是永遠安全的！』，所以套件管理是相當重要的一部份，這裡我們以 RPM 與 Tarball 來介紹一下如何管理你系統上面的套件。再來，你知道你的系統上面跑了多少資料嗎？ 雖然知道什麼是 ps 來查詢程序，但是總是得知道我的系統有哪些服務吧！嘿嘿！ 來看看先?不但如此，還得針對登錄檔進行解析，以及對於系統進行備份。呵呵！ 管理員的工作還真多那。不止不止，還要進行核心的管理呢！哇！果然是忙斃了！無論如何， 還是得要瞭解吶

第十七章、認識系統服務 (daemons)
最近更新日期：2015/08/14

在 Unix-Like 的系統中，你會常常聽到 daemon 這個字眼！那麼什麼是傳說中的 daemon 呢？這些 daemon 放在什麼地方？他的功能是什麼？該如何啟動這些 daemon ？又如何有效的將這些 daemon 管理妥當？此外，要如何視察這些 daemon 開了多少個 ports ？又這些 ports 要如何關閉？還有還有，曉得你系統的這些 port 各代表的是什麼服務嗎？ 這些都是最基礎需要注意的呢！尤其是在架設網站之前，這裡的觀念就顯的更重要了。

從 CentOS 7.x 這一版之後，傳統的 init 已經被捨棄，取而代之的是 systemd 這個傢伙～這傢伙跟之前的 init 有什麼差異？ 優缺點為何？如何管理不同種類的服務類型？以及如何取代原本的『執行等級』等等，很重要的改變喔！

    17.1 什麼是 daemon 與服務 (service)
        17.1.1 早期 Systemp V 的 init 管理行為中 daemon 的主要分類
        17.1.2 systemd 使用的 unit 分類
    17.2 透過 systemctl 管理服務
        17.2.1 透過 systemctl 管理單一服務 (service unit) 的啟動/開機啟動與觀察狀態
        17.2.2 透過 systemctl 觀察系統上所有的服務
        17.2.3 透過 systemctl 管理不同的操作環境 (target unit)
        17.2.4 透過 systemctl 分析各服務之間的相依性
        17.2.5 與 systemd 的 daemon 運作過程相關的目錄簡介： /etc/services
        17.2.6 關閉網路服務
    17.3 systemctl 針對 service 類型的設定檔
        17.3.1 systemctl 設定檔相關目錄簡介
        17.3.2 systemctl 設定檔的設定項目簡介
        17.3.3 兩個 vsftpd 運作的實例
        17.3.4 多重的重複設定方式：以 getty 為例
        17.3.5 自己的服務自己作
    17.4 systemctl 針對 timer 的設定檔
    17.5 CentOS 7.x 預設啟動的服務簡易說明
    17.6 重點回顧

    早期的服務管理使用 systemV 的機制，透過 /etc/init.d/*, service, chkconfig, setup 等指令來管理服務的啟動/關閉/預設啟動；
    從 CentOS 7.x 開始，採用 systemd 的機制，此機制最大功能為平行處理，並採單一指令管理 (systemctl)，開機速度加快！
    systemd 將各服務定義為 unit，而 unit 又分類為 service, socket, target, path, timer 等不同的類別，方便管理與維護
    啟動/關閉/重新啟動的方式為： systemctl [start|stop|restart] unit.service
    設定預設啟動/預設不啟動的方式為： systemctl [enable|disable] unit.service
    查詢系統所有啟動的服務用 systemctl list-units --type=service 而查詢所有的服務 (含不啟動) 使用 systemctl list-unit-files --type=service
    systemd 取消了以前的 runlevel 概念 (雖然還是有相容的 target)，轉而使用不同的 target 操作環境。常見操作環境為 multi-user.targer 與 graphical.target。 不重新開機而轉不同的操作環境使用 systemctl isolate unit.target，而設定預設環境則使用 systemctl set-default unit.target
    systemctl 系統預設的設定檔主要放在 /usr/lib/systemd/system，管理員若要修改或自行設計時，則建議放在 /etc/systemd/system/ 目錄下。
    管理員應使用 man systemd.unit, man systemd.service, man systemd.timer 查詢 /etc/systemd/system/ 底下設定檔的語法， 並使用 systemctl daemon-reload 載入後，才能自行撰寫服務與管理服務喔！
    除了 atd 與 crond 之外，可以 透過 systemd.timer 亦即 timers.target 的功能，來使用 systemd 的時間管理功能。
    一些不需要的服務可以關閉喔！

    17.7 本章習題
    17.8 參考資料與延伸閱讀

    freedesktop.org 的重要介紹：http://www.freedesktop.org/wiki/Software/systemd/
    Red Hat 官網的介紹：https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7
    /html/System_Administrators_Guide/chap-Managing_Services_with_systemd.html
    man systemd.unit, man systemd.service, man systemd.kill, man systemd.timer, man systemd.time
    關於 timer 的相關介紹：
        archlinux.org: https://wiki.archlinux.org/index.php/Systemd/Timers
        Janson's Blog: http://jason.the-graham.com/2013/03/06/how-to-use-systemd-timers/
        freedesktop.org: http://www.freedesktop.org/software/systemd/man/systemd.timer.html

第十八章、認識與分析登錄檔
最近更新日期：2015/08/20

當你的 Linux 系統出現不明原因的問題時，很多人都告訴你，你要查閱一下登錄檔才能夠知道系統出了什麼問題了，所以說， 了解登錄檔是很重要的事情呢。登錄檔可以記錄系統在什麼時間、哪個主機、哪個服務、出現了什麼訊息等資訊， 這些資訊也包括使用者識別資料、系統故障排除須知等資訊。如果你能夠善用這些登錄檔資訊的話，你的系統出現錯誤時， 你將可以在第一時間發現，而且也能夠從中找到解決的方案，而不是昏頭轉向的亂問人呢。 此外，登錄檔所記錄的資訊量是非常大的，要人眼分析實在很困難。此時利用 shell script 或者是其他軟體提供的分析工具來處理複雜的登錄檔，可以幫助你很多很多喔！

    18.1 什麼是登錄檔：
        18.1.1 CentOS 7 登錄檔簡易說明： 重要性, 常見檔名, 服務與程式, systemd-journald
        18.1.2 登錄檔內容的一般格式
    18.2 rsyslog.service ：記錄登錄檔的服務
        18.2.1 rsyslog.service 的設定檔： /etc/rsyslog.conf, 預設的 rsyslog.conf 內容
        18.2.2 登錄檔的安全性設置
        18.2.3 登錄檔伺服器的設定
    18.3 登錄檔的輪替 (logrotate)
        18.3.1 logrotate 的設定檔
        18.3.2 實際測試 logrotate 的動作
        18.3.3 自訂登錄檔的輪替功能
    18.4 systemd-journald.service 簡介：
        18.4.1 使用 journalctl 觀察登錄資訊
        18.4.2 logger 指令的應用
        18.4.3 保存 journal 的方式
    18.5 分析登錄檔
        18.5.1 CentOS 預設提供的 logwatch
        18.5.2 鳥哥自己寫的登錄檔分析工具：
    18.6 重點回顧

    登錄檔可以記錄一個事件的何時、何地、何人、何事等四大資訊，故系統有問題時務必查詢登錄檔；
    系統的登錄檔預設都集中放置到 /var/log/ 目錄內，其中又以 messages 記錄的資訊最多！
    登錄檔記錄的主要服務與程式為： systemd-journald.service, rsyslog.service, rsyslogd
    rsyslogd 的設定檔在 /etc/rsyslog.conf ，內容語法為：『 服務名稱.等級 記載裝置或檔案』
    透過 linux 的 syslog 函數查詢，了解上述服務名稱有 kernel, user, mail...從 0 到 23 的服務序號
    承上，等級從不嚴重到嚴重依序有 info, notice, warning, error, critical, alert, emergency 等
    rsyslogd 本身有提供登錄檔伺服器的功能，透過修改 /etc/rsyslog.conf 內容即可達成；
    logrotate 程式利用 crontab 來進行登錄檔的輪替功能；
    logrotate 的設定檔為 /etc/logrotate.conf ，而額外的設定則可寫入 /etc/logrotate.d/* 內；
    新的 CentOS 7 由於內建 systemd-journald.service 的功能，可以使用 journalctl 直接從記憶體讀出登錄檔，查詢效能較佳
    logwatch 為 CentOS 7 預設提供的一個登錄檔分析軟體。

    18.7 本章習題練習
    18.8 參考資料與延伸閱讀

    註1：關於 console 的說明可以參考底下的連結：
    http://en.wikipedia.org/wiki/Console
    http://publib.boulder.ibm.com/infocenter/systems/index.jsp?topic=/com.ibm.aix.files/doc/aixfiles/console.htm
    關於 logfile 也有網友提供英文版喔： http://phorum.vbird.org/viewtopic.php?f=10&t=34996&p=148198

    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23895

第十九章、開機流程、模組管理與 Loader
最近更新日期：2016/12/28

系統開機其實是一項非常複雜的程序，因為核心得要偵測硬體並載入適當的驅動程式後， 接下來則必須要呼叫程序來準備好系統運作的環境，以讓使用者能夠順利的操作整部主機系統。 如果你能夠理解開機的原理，那麼將有助於你在系統出問題時能夠很快速的修復系統喔！ 而且還能夠順利的配置多重作業系統的多重開機問題。為了多重開機的問題，你就不能不學學 grub2 這個 Linux 底下優秀的開機管理程式 (boot loader)。 而在系統運作期間，你也得要學會管理核心模組呢！

    19.1 Linux 的開機流程分析
        19.1.1 開機流程一覽
        19.1.2 BIOS, boot loader 與 kernel 載入：lsinitrd
        19.1.3 第一支程式 systemd 及使用 default.target 進入開機程序分析
        19.1.4 systemd 執行 sysinit.target 初始化系統、basic.target 準備系統
        19.1.5 systemd 啟動 multi-user.target 下的服務： 相容的 rc.local, getty.target 啟動
        19.1.6 systemd 啟動 graphical.target 底下的服務
        19.1.7 開機過程會用到的主要設定檔
    19.2 核心與核心模組
        19.2.1 核心模組與相依性： depmod
        19.2.2 核心模組的觀察： lsmod, modinfo
        19.2.3 核心模組的載入與移除：insmod, modprobe, rmmod
        19.2.4 核心模組的額外參數設定：/etc/modprobe.d/*conf
    19.3 Boot loader: Grub2
        19.3.1 boot loader 的兩個 stage
        19.3.2 grub2 的設定檔 /boot/grub2/grub.cfg 初探： 磁碟代號, grub.cfg
        19.3.3 grub2 設定檔維護 /etc/default/grub 與 /etc/grub.d： grub, 40_custom
        19.3.4 initramfs 的重要性與建立新 initramfs 檔案： dracut/mkinitrd
        19.3.5 測試與安裝 grub2： grub2-install
        19.3.6 開機前的額外功能修改
        19.3.7 關於開機畫面與終端機畫面的圖形顯示方式
        19.3.8 為個別選單加上密碼： grub2-mkpasswd-pbkdf2
    19.4 開機過程的問題解決
        19.4.1 忘記 root 密碼的解決之道
        19.4.2 直接開機就以 root 執行 bash 的方法
        19.4.3 因檔案系統錯誤而無法開機
    19.5 重點回顧

    Linux 不可隨意關機，否則容易造成檔案系統錯亂或者是其他無法開機的問題；
    開機流程主要是：BIOS、MBR、Loader、kernel+initramfs、systemd 等流程
    Loader 具有提供選單、載入核心檔案、轉交控制權給其他 loader 等功能。
    boot loader 可以安裝在 MBR 或者是每個分割槽的 boot sector 區域中
    initramfs 可以提供核心在開機過程中所需要的最重要的模組，通常與磁碟及檔案系統有關的模組；
    systemd 的設定檔為主要來自 /etc/systemd/system/default.target 項目；
    額外的裝置與模組對應，可寫入 /etc/modprobe.d/*.conf 中；
    核心模組的管理可使用 lsmod, modinfo, rmmod, insmod, modprobe 等指令；
    modprobe 主要參考 /lib/modules/$(uanem -r)/modules.dep 的設定來載入與卸載核心模組；
    grub2 的設定檔與相關檔案系統定義檔大多放置於 /boot/grub2 目錄中，設定檔名為 grub.cfg
    grub2 對磁碟的代號設定與 Linux 不同，主要透過偵測的順序來給予設定。如 (hd0) 及 (hd0,1) 等。
    grub.cfg 內每個選單與 menuentry 有關，而直接指定核心開機時，至少需要 linux16 及 initrd16 兩個項目
    grub.cfg 內設定 loader 控制權移交時，最重要者為 chainloader +1 這個項目。
    若想要重建 initramfs ，可使用 dracut 或 mkinitrd 處理
    重新安裝 grub2 到 MBR 或 boot sector 時，可以利用 grub2-install 來處理。
    若想要進入救援模式，可於開機選單過程中，在 linux16 的項目後面加入『 rd.break 』或『 init=/bin/bash 』等方式來進入救援模式。
    我們可以對 grub2 的個別選單給予不同的密碼。

    19.6 本章習題
    19.7 參考資料與延伸閱讀

    註1：BIOS 的 POST 功能解釋：http://en.wikipedia.org/wiki/Power-on_self-test
    註2：BIOS 的 INT 13 硬體中斷解釋：http://en.wikipedia.org/wiki/INT_13
    註3：關於 splash 的相關說明：http://ruslug.rutgers.edu/~mcgrof/grub-images/
    註4：一些 grub 出錯時的解決之道：
    http://wiki.linuxquestions.org/wiki/GRUB_boot_menu
    http://forums.gentoo.org/viewtopic.php?t=122656&highlight=grub+error+collection
    info grub (尤其是 6.1 的段落，在講解 /etc/default/grub 的設定項目)
    GNU 官方網站關於 grub 的說明文件：
    http://www.gnu.org/software/grub/manual/html_node/
    純文字螢幕解析度的修改方法：
    http://phorum.study-area.org/viewtopic.php?t=14776

    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23891

第二十章、基礎系統設定與備份策略
最近更新日期：2015/09/03

新的 CentOS 7 有針對不同的服務提供了相當大量的指令列設定模式，因此過去那個 setup 似乎沒有什麼用了！ 取而代之的是許多加入了 bash-complete 提供了不少參數補全的設定工具！甚至包括網路設定也是透過這個機制哩！ 我們這個小章節主要就是在介紹如何透過這些基本的指令來設定系統就是了。另外， 萬一不幸你的 Linux 被駭客入侵了、或是你的 Linux 系統由於硬體關係 (不論是天災還是人禍) 而掛掉了！這個時候，請問如何快速的回復你的系統呢？呵呵！當然囉，如果有備份資料的話， 那麼回復系統所花費的時間與成本將降低相當的多！平時最好就養成備份的習慣， 以免突然間的系統損毀造成手足無措！此外，哪些檔案最需要備份呢？又，備份是需要完整的備份還是僅備份重要資料即可？ 嗯！確實需要考慮看看呦！

    20.1 系統基本設定
        20.1.1 網路設定 (手動設定與DHCP自動取得)： 手動, 自動, 改主機名稱
        20.1.2 日期與時間設定
        20.1.3 語系設定
        20.1.4 防火牆簡易設定
    20.2 伺服器硬體資料的收集
        20.2.1 以系統內建 dmidecode 解析硬體配備
        20.2.2 硬體資源的收集與分析： lspci, lsusb, iostat...
        20.2.3 瞭解磁碟的健康狀態
    20.3 備份要點
        20.3.1 備份資料的考量
        20.3.2 哪些 Linux 資料具有備份的意義
        20.3.3 備份用儲存媒體的選擇
    20.4 備份的種類、頻率與工具的選擇
        20.4.1 完整備份之累積備份 (Incremental backup), 使用軟體
        20.4.2 完整備份之差異備份 (Differential backup)
        20.4.3 關鍵資料備份
    20.5 VBird 的備份策略與 scripts
        20.5.1 每週系統備份的 script
        20.5.2 每日備份資料的 script
        20.5.3 遠端備援的 script
    20.6 災難復原的考量
    20.7 重點回顧

    網際網路 (Internet) 就是 TCP/IP ，而 IP 的取得需與 ISP 要求。一般常見的取得 IP 的方法有：(1)手動直接設定 (2)自動取得 (dhcp) (3)撥接取得 (4)cable寬頻 等方式。
    主機的網路設定要成功，必須要有底下的資料：(1)IP (2)Netmask (3)gateway (4)DNS 伺服器 等項目；
    本章新增硬體資訊的收集指令有： lspci, lsusb, iostat 等；
    備份是系統損毀時等待救援的救星，但造成系統損毀的因素可能有硬體與軟體等原因。
    由於主機的任務不同，備份的資料與頻率等考量參數也不相同。
    常見的備份考慮因素有：關鍵檔案、儲存媒體、備份方式(完整/關鍵)、備份頻率、使用的備份工具等。
    常見的關鍵資料有：/etc, /home, /var/spool/mail, /boot, /root 等等
    儲存媒體的選擇方式，需要考慮的地方有：備份速度、媒體的容量、經費與媒體的可靠性等。
    與完整備份有關的備份策略主要有：累積備份與差異備份。
    累積備份可具有較小的儲存資料量、備份速度快速等。但是在還原方面則比差異備份的還原慢。
    完整備份的策略中，常用的工具有 dd, cpio, tar, xfsdump 等等。

    20.8 本章習題
    20.9 參考資料與延伸閱讀

    註1：維基百科的備份說明：http://en.wikipedia.org/wiki/Incremental_backup
    註2：關於 differential 與 incremental 備份的優缺點說明：
    http://www.backupschedule.net/databackup/differentialbackup.html
    註3：一些備份計畫的實施：http://en.wikipedia.org/wiki/Backup_rotation_scheme

    針對本文的建議：http://phorum.vbird.org/viewtopic.php?t=23898







    • 第六部份：其他備份文章
