
Disassembly of section .text:

00401000 <.text>:
  401000:	83 ec 1c             	sub    esp,0x1c
  401003:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401007:	8b 00                	mov    eax,DWORD PTR [eax]
  401009:	8b 00                	mov    eax,DWORD PTR [eax]
  40100b:	3d 91 00 00 c0       	cmp    eax,0xc0000091
  401010:	77 4e                	ja     401060 <.text+0x60>
  401012:	3d 8d 00 00 c0       	cmp    eax,0xc000008d
  401017:	73 60                	jae    401079 <.text+0x79>
  401019:	3d 05 00 00 c0       	cmp    eax,0xc0000005
  40101e:	0f 85 cc 00 00 00    	jne    4010f0 <.text+0xf0>
  401024:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  40102b:	00 
  40102c:	c7 04 24 0b 00 00 00 	mov    DWORD PTR [esp],0xb
  401033:	e8 40 2b 00 00       	call   403b78 <signal>
  401038:	83 f8 01             	cmp    eax,0x1
  40103b:	0f 84 48 01 00 00    	je     401189 <.text+0x189>
  401041:	85 c0                	test   eax,eax
  401043:	0f 85 e7 00 00 00    	jne    401130 <.text+0x130>
  401049:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401050:	31 c0                	xor    eax,eax
  401052:	83 c4 1c             	add    esp,0x1c
  401055:	c2 04 00             	ret    0x4
  401058:	90                   	nop
  401059:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401060:	3d 94 00 00 c0       	cmp    eax,0xc0000094
  401065:	74 49                	je     4010b0 <.text+0xb0>
  401067:	3d 96 00 00 c0       	cmp    eax,0xc0000096
  40106c:	0f 84 89 00 00 00    	je     4010fb <.text+0xfb>
  401072:	3d 93 00 00 c0       	cmp    eax,0xc0000093
  401077:	75 d7                	jne    401050 <.text+0x50>
  401079:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  401080:	00 
  401081:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  401088:	e8 eb 2a 00 00       	call   403b78 <signal>
  40108d:	83 f8 01             	cmp    eax,0x1
  401090:	0f 84 ad 00 00 00    	je     401143 <.text+0x143>
  401096:	85 c0                	test   eax,eax
  401098:	74 b6                	je     401050 <.text+0x50>
  40109a:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  4010a1:	ff d0                	call   eax
  4010a3:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4010a8:	eb a8                	jmp    401052 <.text+0x52>
  4010aa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  4010b0:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4010b7:	00 
  4010b8:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  4010bf:	e8 b4 2a 00 00       	call   403b78 <signal>
  4010c4:	83 f8 01             	cmp    eax,0x1
  4010c7:	75 cd                	jne    401096 <.text+0x96>
  4010c9:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  4010d0:	00 
  4010d1:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  4010d8:	e8 9b 2a 00 00       	call   403b78 <signal>
  4010dd:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4010e2:	e9 6b ff ff ff       	jmp    401052 <.text+0x52>
  4010e7:	89 f6                	mov    esi,esi
  4010e9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4010f0:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
  4010f5:	0f 85 55 ff ff ff    	jne    401050 <.text+0x50>
  4010fb:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  401102:	00 
  401103:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
  40110a:	e8 69 2a 00 00       	call   403b78 <signal>
  40110f:	83 f8 01             	cmp    eax,0x1
  401112:	74 59                	je     40116d <.text+0x16d>
  401114:	85 c0                	test   eax,eax
  401116:	0f 84 34 ff ff ff    	je     401050 <.text+0x50>
  40111c:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
  401123:	ff d0                	call   eax
  401125:	b8 ff ff ff ff       	mov    eax,0xffffffff
  40112a:	e9 23 ff ff ff       	jmp    401052 <.text+0x52>
  40112f:	90                   	nop
  401130:	c7 04 24 0b 00 00 00 	mov    DWORD PTR [esp],0xb
  401137:	ff d0                	call   eax
  401139:	b8 ff ff ff ff       	mov    eax,0xffffffff
  40113e:	e9 0f ff ff ff       	jmp    401052 <.text+0x52>
  401143:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  40114a:	00 
  40114b:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  401152:	e8 21 2a 00 00       	call   403b78 <signal>
  401157:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  40115e:	e8 0d 10 00 00       	call   402170 <fesetenv>
  401163:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401168:	e9 e5 fe ff ff       	jmp    401052 <.text+0x52>
  40116d:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  401174:	00 
  401175:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
  40117c:	e8 f7 29 00 00       	call   403b78 <signal>
  401181:	83 c8 ff             	or     eax,0xffffffff
  401184:	e9 c9 fe ff ff       	jmp    401052 <.text+0x52>
  401189:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  401190:	00 
  401191:	c7 04 24 0b 00 00 00 	mov    DWORD PTR [esp],0xb
  401198:	e8 db 29 00 00       	call   403b78 <signal>
  40119d:	83 c8 ff             	or     eax,0xffffffff
  4011a0:	e9 ad fe ff ff       	jmp    401052 <.text+0x52>
  4011a5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4011a9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4011b0:	55                   	push   ebp
  4011b1:	89 e5                	mov    ebp,esp
  4011b3:	53                   	push   ebx
  4011b4:	83 ec 14             	sub    esp,0x14
  4011b7:	a1 80 51 40 00       	mov    eax,ds:0x405180
  4011bc:	85 c0                	test   eax,eax
  4011be:	74 1c                	je     4011dc <.text+0x1dc>
  4011c0:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  4011c7:	00 
  4011c8:	c7 44 24 04 02 00 00 	mov    DWORD PTR [esp+0x4],0x2
  4011cf:	00 
  4011d0:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  4011d7:	ff d0                	call   eax
  4011d9:	83 ec 0c             	sub    esp,0xc
  4011dc:	c7 04 24 00 10 40 00 	mov    DWORD PTR [esp],0x401000
  4011e3:	e8 40 2a 00 00       	call   403c28 <SetUnhandledExceptionFilter@4>
  4011e8:	83 ec 04             	sub    esp,0x4
  4011eb:	e8 70 07 00 00       	call   401960 <__cpu_features_init>
  4011f0:	a1 08 40 40 00       	mov    eax,ds:0x404008
  4011f5:	89 04 24             	mov    DWORD PTR [esp],eax
  4011f8:	e8 73 0f 00 00       	call   402170 <fesetenv>
  4011fd:	e8 be 03 00 00       	call   4015c0 <_setargv>
  401202:	a1 20 70 40 00       	mov    eax,ds:0x407020
  401207:	85 c0                	test   eax,eax
  401209:	74 42                	je     40124d <.text+0x24d>
  40120b:	8b 1d a4 81 40 00    	mov    ebx,DWORD PTR ds:0x4081a4
  401211:	a3 0c 40 40 00       	mov    ds:0x40400c,eax
  401216:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  40121a:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  40121d:	89 04 24             	mov    DWORD PTR [esp],eax
  401220:	e8 ab 29 00 00       	call   403bd0 <_setmode>
  401225:	a1 20 70 40 00       	mov    eax,ds:0x407020
  40122a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  40122e:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
  401231:	89 04 24             	mov    DWORD PTR [esp],eax
  401234:	e8 97 29 00 00       	call   403bd0 <_setmode>
  401239:	a1 20 70 40 00       	mov    eax,ds:0x407020
  40123e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401242:	8b 43 50             	mov    eax,DWORD PTR [ebx+0x50]
  401245:	89 04 24             	mov    DWORD PTR [esp],eax
  401248:	e8 83 29 00 00       	call   403bd0 <_setmode>
  40124d:	e8 a6 29 00 00       	call   403bf8 <__p__fmode>
  401252:	8b 15 0c 40 40 00    	mov    edx,DWORD PTR ds:0x40400c
  401258:	89 10                	mov    DWORD PTR [eax],edx
  40125a:	e8 11 0d 00 00       	call   401f70 <_pei386_runtime_relocator>
  40125f:	83 e4 f0             	and    esp,0xfffffff0
  401262:	e8 89 08 00 00       	call   401af0 <__main>
  401267:	e8 94 29 00 00       	call   403c00 <__p__environ>
  40126c:	8b 00                	mov    eax,DWORD PTR [eax]
  40126e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  401272:	a1 00 70 40 00       	mov    eax,ds:0x407000
  401277:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  40127b:	a1 04 70 40 00       	mov    eax,ds:0x407004
  401280:	89 04 24             	mov    DWORD PTR [esp],eax
  401283:	e8 d8 01 00 00       	call   401460 <main>
  401288:	89 c3                	mov    ebx,eax
  40128a:	e8 61 29 00 00       	call   403bf0 <_cexit>
  40128f:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401292:	e8 f1 29 00 00       	call   403c88 <ExitProcess@4>
  401297:	89 f6                	mov    esi,esi
  401299:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004012a0 <_mingw32_init_mainargs>:
  4012a0:	83 ec 3c             	sub    esp,0x3c
  4012a3:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  4012a7:	c7 44 24 04 00 70 40 	mov    DWORD PTR [esp+0x4],0x407000
  4012ae:	00 
  4012af:	c7 04 24 04 70 40 00 	mov    DWORD PTR [esp],0x407004
  4012b6:	c7 44 24 2c 00 00 00 	mov    DWORD PTR [esp+0x2c],0x0
  4012bd:	00 
  4012be:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  4012c2:	a1 04 40 40 00       	mov    eax,ds:0x404004
  4012c7:	83 e0 01             	and    eax,0x1
  4012ca:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  4012ce:	8d 44 24 28          	lea    eax,[esp+0x28]
  4012d2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4012d6:	e8 2d 29 00 00       	call   403c08 <__getmainargs>
  4012db:	83 c4 3c             	add    esp,0x3c
  4012de:	c3                   	ret    
  4012df:	90                   	nop

004012e0 <mainCRTStartup>:
  4012e0:	83 ec 1c             	sub    esp,0x1c
  4012e3:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
  4012ea:	ff 15 90 81 40 00    	call   DWORD PTR ds:0x408190
  4012f0:	e8 bb fe ff ff       	call   4011b0 <.text+0x1b0>
  4012f5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4012f9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401300 <WinMainCRTStartup>:
  401300:	83 ec 1c             	sub    esp,0x1c
  401303:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
  40130a:	ff 15 90 81 40 00    	call   DWORD PTR ds:0x408190
  401310:	e8 9b fe ff ff       	call   4011b0 <.text+0x1b0>
  401315:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401319:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401320 <atexit>:
  401320:	ff 25 bc 81 40 00    	jmp    DWORD PTR ds:0x4081bc
  401326:	8d 76 00             	lea    esi,[esi+0x0]
  401329:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401330 <_onexit>:
  401330:	ff 25 ac 81 40 00    	jmp    DWORD PTR ds:0x4081ac
  401336:	90                   	nop
  401337:	90                   	nop
  401338:	90                   	nop
  401339:	90                   	nop
  40133a:	90                   	nop
  40133b:	90                   	nop
  40133c:	90                   	nop
  40133d:	90                   	nop
  40133e:	90                   	nop
  40133f:	90                   	nop

00401340 <__gcc_register_frame>:
  401340:	55                   	push   ebp
  401341:	89 e5                	mov    ebp,esp
  401343:	56                   	push   esi
  401344:	53                   	push   ebx
  401345:	83 ec 10             	sub    esp,0x10
  401348:	c7 04 24 00 50 40 00 	mov    DWORD PTR [esp],0x405000
  40134f:	e8 fc 28 00 00       	call   403c50 <GetModuleHandleA@4>
  401354:	83 ec 04             	sub    esp,0x4
  401357:	85 c0                	test   eax,eax
  401359:	0f 84 b1 00 00 00    	je     401410 <__gcc_register_frame+0xd0>
  40135f:	c7 04 24 00 50 40 00 	mov    DWORD PTR [esp],0x405000
  401366:	89 c3                	mov    ebx,eax
  401368:	e8 c3 28 00 00       	call   403c30 <LoadLibraryA@4>
  40136d:	83 ec 04             	sub    esp,0x4
  401370:	a3 6c 70 40 00       	mov    ds:0x40706c,eax
  401375:	c7 44 24 04 13 50 40 	mov    DWORD PTR [esp+0x4],0x405013
  40137c:	00 
  40137d:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401380:	e8 c3 28 00 00       	call   403c48 <GetProcAddress@8>
  401385:	83 ec 08             	sub    esp,0x8
  401388:	89 c6                	mov    esi,eax
  40138a:	c7 44 24 04 29 50 40 	mov    DWORD PTR [esp+0x4],0x405029
  401391:	00 
  401392:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401395:	e8 ae 28 00 00       	call   403c48 <GetProcAddress@8>
  40139a:	83 ec 08             	sub    esp,0x8
  40139d:	a3 00 40 40 00       	mov    ds:0x404000,eax
  4013a2:	85 f6                	test   esi,esi
  4013a4:	74 11                	je     4013b7 <__gcc_register_frame+0x77>
  4013a6:	c7 44 24 04 08 70 40 	mov    DWORD PTR [esp+0x4],0x407008
  4013ad:	00 
  4013ae:	c7 04 24 b8 60 40 00 	mov    DWORD PTR [esp],0x4060b8
  4013b5:	ff d6                	call   esi
  4013b7:	a1 18 40 40 00       	mov    eax,ds:0x404018
  4013bc:	85 c0                	test   eax,eax
  4013be:	74 3a                	je     4013fa <__gcc_register_frame+0xba>
  4013c0:	c7 04 24 41 50 40 00 	mov    DWORD PTR [esp],0x405041
  4013c7:	e8 84 28 00 00       	call   403c50 <GetModuleHandleA@4>
  4013cc:	83 ec 04             	sub    esp,0x4
  4013cf:	85 c0                	test   eax,eax
  4013d1:	ba 00 00 00 00       	mov    edx,0x0
  4013d6:	74 15                	je     4013ed <__gcc_register_frame+0xad>
  4013d8:	c7 44 24 04 4f 50 40 	mov    DWORD PTR [esp+0x4],0x40504f
  4013df:	00 
  4013e0:	89 04 24             	mov    DWORD PTR [esp],eax
  4013e3:	e8 60 28 00 00       	call   403c48 <GetProcAddress@8>
  4013e8:	83 ec 08             	sub    esp,0x8
  4013eb:	89 c2                	mov    edx,eax
  4013ed:	85 d2                	test   edx,edx
  4013ef:	74 09                	je     4013fa <__gcc_register_frame+0xba>
  4013f1:	c7 04 24 18 40 40 00 	mov    DWORD PTR [esp],0x404018
  4013f8:	ff d2                	call   edx
  4013fa:	c7 04 24 30 14 40 00 	mov    DWORD PTR [esp],0x401430
  401401:	e8 1a ff ff ff       	call   401320 <atexit>
  401406:	8d 65 f8             	lea    esp,[ebp-0x8]
  401409:	5b                   	pop    ebx
  40140a:	5e                   	pop    esi
  40140b:	5d                   	pop    ebp
  40140c:	c3                   	ret    
  40140d:	8d 76 00             	lea    esi,[esi+0x0]
  401410:	c7 05 00 40 40 00 00 	mov    DWORD PTR ds:0x404000,0x0
  401417:	00 00 00 
  40141a:	be 00 00 00 00       	mov    esi,0x0
  40141f:	eb 81                	jmp    4013a2 <__gcc_register_frame+0x62>
  401421:	eb 0d                	jmp    401430 <__gcc_deregister_frame>
  401423:	90                   	nop
  401424:	90                   	nop
  401425:	90                   	nop
  401426:	90                   	nop
  401427:	90                   	nop
  401428:	90                   	nop
  401429:	90                   	nop
  40142a:	90                   	nop
  40142b:	90                   	nop
  40142c:	90                   	nop
  40142d:	90                   	nop
  40142e:	90                   	nop
  40142f:	90                   	nop

00401430 <__gcc_deregister_frame>:
  401430:	55                   	push   ebp
  401431:	89 e5                	mov    ebp,esp
  401433:	83 ec 18             	sub    esp,0x18
  401436:	a1 00 40 40 00       	mov    eax,ds:0x404000
  40143b:	85 c0                	test   eax,eax
  40143d:	74 09                	je     401448 <__gcc_deregister_frame+0x18>
  40143f:	c7 04 24 b8 60 40 00 	mov    DWORD PTR [esp],0x4060b8
  401446:	ff d0                	call   eax
  401448:	a1 6c 70 40 00       	mov    eax,ds:0x40706c
  40144d:	85 c0                	test   eax,eax
  40144f:	74 0b                	je     40145c <__gcc_deregister_frame+0x2c>
  401451:	89 04 24             	mov    DWORD PTR [esp],eax
  401454:	e8 0f 28 00 00       	call   403c68 <FreeLibrary@4>
  401459:	83 ec 04             	sub    esp,0x4
  40145c:	c9                   	leave  
  40145d:	c3                   	ret    
  40145e:	90                   	nop
  40145f:	90                   	nop

00401460 <main>:
main():
F:\gitdata\source\exercise\c primer plus/program_3.11.c:5
/* 第3章复习 */
#include <stdio.h>

int main(void)
{
  401460:	55                   	push   ebp
  401461:	89 e5                	mov    ebp,esp
  401463:	83 e4 f0             	and    esp,0xfffffff0
  401466:	83 ec 60             	sub    esp,0x60
  401469:	e8 82 06 00 00       	call   401af0 <__main>
F:\gitdata\source\exercise\c primer plus/program_3.11.c:12
	//float g; h;  // 变量声明语句错误
	float g, h;
	float tax, rate;
	
	//g = e21;  // g 变量的初始化值不正确
	g = 1.1e21;
  40146e:	d9 05 3c 51 40 00    	fld    DWORD PTR ds:0x40513c
  401474:	d9 5c 24 5c          	fstp   DWORD PTR [esp+0x5c]
F:\gitdata\source\exercise\c primer plus/program_3.11.c:16
	//tax = rate * g;    // rate变量没有初始化
	
	// 复习6
	printf("\n复习6:\n");
  401478:	c7 04 24 70 50 40 00 	mov    DWORD PTR [esp],0x405070
  40147f:	e8 0c 27 00 00       	call   403b90 <printf>
F:\gitdata\source\exercise\c primer plus/program_3.11.c:17
	printf(" %d,\n %#x,\n %c,\n %e,\n %c,\n %f,\n %ld,\n %f,\n %a\n", 
  401484:	dd 05 40 51 40 00    	fld    QWORD PTR ds:0x405140
  40148a:	dd 5c 24 30          	fstp   QWORD PTR [esp+0x30]
  40148e:	dd 05 48 51 40 00    	fld    QWORD PTR ds:0x405148
  401494:	dd 5c 24 28          	fstp   QWORD PTR [esp+0x28]
  401498:	c7 44 24 24 06 00 00 	mov    DWORD PTR [esp+0x24],0x6
  40149f:	00 
  4014a0:	dd 05 50 51 40 00    	fld    QWORD PTR ds:0x405150
  4014a6:	dd 5c 24 1c          	fstp   QWORD PTR [esp+0x1c]
  4014aa:	c7 44 24 18 20 00 00 	mov    DWORD PTR [esp+0x18],0x20
  4014b1:	00 
  4014b2:	dd 05 58 51 40 00    	fld    QWORD PTR ds:0x405158
  4014b8:	dd 5c 24 10          	fstp   QWORD PTR [esp+0x10]
  4014bc:	c7 44 24 0c 43 00 00 	mov    DWORD PTR [esp+0xc],0x43
  4014c3:	00 
  4014c4:	c7 44 24 08 03 00 00 	mov    DWORD PTR [esp+0x8],0x3
  4014cb:	00 
  4014cc:	c7 44 24 04 0c 00 00 	mov    DWORD PTR [esp+0x4],0xc
  4014d3:	00 
  4014d4:	c7 04 24 7c 50 40 00 	mov    DWORD PTR [esp],0x40507c
  4014db:	e8 b0 26 00 00       	call   403b90 <printf>
F:\gitdata\source\exercise\c primer plus/program_3.11.c:21
			12, 0x3, 'C', 2.34E07, '\040', 7.0, 6L, 6.0f, 0x5.b6p12);
	
	// 复习7
	printf("\n复习7:\n");
  4014e0:	c7 04 24 ab 50 40 00 	mov    DWORD PTR [esp],0x4050ab
  4014e7:	e8 a4 26 00 00       	call   403b90 <printf>
F:\gitdata\source\exercise\c primer plus/program_3.11.c:22
	printf(" %#o,\n %Le,\n %c,\n %ld,\n %c,\n %f,\n %#x,\n %d \n", 
  4014ec:	c7 44 24 2c d8 ff ff 	mov    DWORD PTR [esp+0x2c],0xffffffd8
  4014f3:	ff 
  4014f4:	c7 44 24 28 44 00 00 	mov    DWORD PTR [esp+0x28],0x44
  4014fb:	00 
  4014fc:	dd 05 60 51 40 00    	fld    QWORD PTR ds:0x405160
  401502:	dd 5c 24 20          	fstp   QWORD PTR [esp+0x20]
  401506:	c7 44 24 1c 0a 00 00 	mov    DWORD PTR [esp+0x1c],0xa
  40150d:	00 
  40150e:	c7 44 24 18 a0 86 01 	mov    DWORD PTR [esp+0x18],0x186a0
  401515:	00 
  401516:	c7 44 24 14 73 00 00 	mov    DWORD PTR [esp+0x14],0x73
  40151d:	00 
  40151e:	db 2d 70 51 40 00    	fld    TBYTE PTR ds:0x405170
  401524:	db 7c 24 08          	fstp   TBYTE PTR [esp+0x8]
  401528:	c7 44 24 04 0a 00 00 	mov    DWORD PTR [esp+0x4],0xa
  40152f:	00 
  401530:	c7 04 24 b8 50 40 00 	mov    DWORD PTR [esp],0x4050b8
  401537:	e8 54 26 00 00       	call   403b90 <printf>
F:\gitdata\source\exercise\c primer plus/program_3.11.c:26
			012, 2.9e05L, 's', 100000, '\n', 20.0f, 0x44, -40);
	
	// 复习8
	int imate = 2;
  40153c:	c7 44 24 58 02 00 00 	mov    DWORD PTR [esp+0x58],0x2
  401543:	00 
F:\gitdata\source\exercise\c primer plus/program_3.11.c:27
	long shot = 53456;
  401544:	c7 44 24 54 d0 d0 00 	mov    DWORD PTR [esp+0x54],0xd0d0
  40154b:	00 
F:\gitdata\source\exercise\c primer plus/program_3.11.c:28
	char grade = 'A';
  40154c:	c6 44 24 53 41       	mov    BYTE PTR [esp+0x53],0x41
F:\gitdata\source\exercise\c primer plus/program_3.11.c:29
	float log = 2.71828;
  401551:	d9 05 7c 51 40 00    	fld    DWORD PTR ds:0x40517c
  401557:	d9 5c 24 4c          	fstp   DWORD PTR [esp+0x4c]
F:\gitdata\source\exercise\c primer plus/program_3.11.c:31
	
	printf("\n复习8:\n");
  40155b:	c7 04 24 e5 50 40 00 	mov    DWORD PTR [esp],0x4050e5
  401562:	e8 29 26 00 00       	call   403b90 <printf>
F:\gitdata\source\exercise\c primer plus/program_3.11.c:32
	printf("The odds against the %d were %ld to 1.\n", imate, shot);
  401567:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  40156b:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  40156f:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  401573:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401577:	c7 04 24 f0 50 40 00 	mov    DWORD PTR [esp],0x4050f0
  40157e:	e8 0d 26 00 00       	call   403b90 <printf>
F:\gitdata\source\exercise\c primer plus/program_3.11.c:33
	printf("a score of %f is not an %c grade.\n", log, grade);
  401583:	0f be 44 24 53       	movsx  eax,BYTE PTR [esp+0x53]
  401588:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  40158c:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  401590:	dd 5c 24 04          	fstp   QWORD PTR [esp+0x4]
  401594:	c7 04 24 18 51 40 00 	mov    DWORD PTR [esp],0x405118
  40159b:	e8 f0 25 00 00       	call   403b90 <printf>
F:\gitdata\source\exercise\c primer plus/program_3.11.c:36
	
	// 复习9
	char ch = '\r';
  4015a0:	c6 44 24 4b 0d       	mov    BYTE PTR [esp+0x4b],0xd
F:\gitdata\source\exercise\c primer plus/program_3.11.c:37
	ch = 13;
  4015a5:	c6 44 24 4b 0d       	mov    BYTE PTR [esp+0x4b],0xd
F:\gitdata\source\exercise\c primer plus/program_3.11.c:38
	ch = '\015';
  4015aa:	c6 44 24 4b 0d       	mov    BYTE PTR [esp+0x4b],0xd
F:\gitdata\source\exercise\c primer plus/program_3.11.c:39
	ch = '\xd';
  4015af:	c6 44 24 4b 0d       	mov    BYTE PTR [esp+0x4b],0xd
F:\gitdata\source\exercise\c primer plus/program_3.11.c:41
	
	return 0;
  4015b4:	b8 00 00 00 00       	mov    eax,0x0
F:\gitdata\source\exercise\c primer plus/program_3.11.c:42
  4015b9:	c9                   	leave  
  4015ba:	c3                   	ret    
  4015bb:	90                   	nop
  4015bc:	66 90                	xchg   ax,ax
  4015be:	66 90                	xchg   ax,ax

004015c0 <_setargv>:
  4015c0:	55                   	push   ebp
  4015c1:	89 e5                	mov    ebp,esp
  4015c3:	57                   	push   edi
  4015c4:	56                   	push   esi
  4015c5:	53                   	push   ebx
  4015c6:	83 ec 4c             	sub    esp,0x4c
  4015c9:	f6 05 04 40 40 00 02 	test   BYTE PTR ds:0x404004,0x2
  4015d0:	0f 84 ea 02 00 00    	je     4018c0 <_setargv+0x300>
  4015d6:	e8 85 26 00 00       	call   403c60 <GetCommandLineA@0>
  4015db:	89 65 c4             	mov    DWORD PTR [ebp-0x3c],esp
  4015de:	89 04 24             	mov    DWORD PTR [esp],eax
  4015e1:	89 c6                	mov    esi,eax
  4015e3:	e8 80 25 00 00       	call   403b68 <strlen>
  4015e8:	8d 44 00 11          	lea    eax,[eax+eax*1+0x11]
  4015ec:	c1 e8 04             	shr    eax,0x4
  4015ef:	c1 e0 04             	shl    eax,0x4
  4015f2:	e8 49 0b 00 00       	call   402140 <__chkstk_ms>
  4015f7:	29 c4                	sub    esp,eax
  4015f9:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
  401600:	c7 45 d4 00 00 00 00 	mov    DWORD PTR [ebp-0x2c],0x0
  401607:	8d 44 24 10          	lea    eax,[esp+0x10]
  40160b:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [ebp-0x30],0x0
  401612:	89 c2                	mov    edx,eax
  401614:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  401617:	a1 04 40 40 00       	mov    eax,ds:0x404004
  40161c:	25 00 44 00 00       	and    eax,0x4400
  401621:	83 c8 10             	or     eax,0x10
  401624:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  401627:	31 c0                	xor    eax,eax
  401629:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401630:	83 c6 01             	add    esi,0x1
  401633:	0f be 4e ff          	movsx  ecx,BYTE PTR [esi-0x1]
  401637:	85 c9                	test   ecx,ecx
  401639:	89 cb                	mov    ebx,ecx
  40163b:	74 73                	je     4016b0 <_setargv+0xf0>
  40163d:	80 fb 3f             	cmp    bl,0x3f
  401640:	0f 84 8d 01 00 00    	je     4017d3 <_setargv+0x213>
  401646:	0f 8f b4 00 00 00    	jg     401700 <_setargv+0x140>
  40164c:	80 fb 27             	cmp    bl,0x27
  40164f:	0f 84 b0 01 00 00    	je     401805 <_setargv+0x245>
  401655:	80 fb 2a             	cmp    bl,0x2a
  401658:	0f 84 75 01 00 00    	je     4017d3 <_setargv+0x213>
  40165e:	80 fb 22             	cmp    bl,0x22
  401661:	0f 85 09 01 00 00    	jne    401770 <_setargv+0x1b0>
  401667:	89 c1                	mov    ecx,eax
  401669:	d1 f9                	sar    ecx,1
  40166b:	0f 84 d9 02 00 00    	je     40194a <_setargv+0x38a>
  401671:	01 d1                	add    ecx,edx
  401673:	83 c2 01             	add    edx,0x1
  401676:	c6 42 ff 5c          	mov    BYTE PTR [edx-0x1],0x5c
  40167a:	39 ca                	cmp    edx,ecx
  40167c:	75 f5                	jne    401673 <_setargv+0xb3>
  40167e:	83 7d d4 27          	cmp    DWORD PTR [ebp-0x2c],0x27
  401682:	0f 84 c9 01 00 00    	je     401851 <_setargv+0x291>
  401688:	a8 01                	test   al,0x1
  40168a:	0f 85 c1 01 00 00    	jne    401851 <_setargv+0x291>
  401690:	83 c6 01             	add    esi,0x1
  401693:	89 ca                	mov    edx,ecx
  401695:	83 75 d4 22          	xor    DWORD PTR [ebp-0x2c],0x22
  401699:	0f be 4e ff          	movsx  ecx,BYTE PTR [esi-0x1]
  40169d:	31 c0                	xor    eax,eax
  40169f:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [ebp-0x30],0x1
  4016a6:	85 c9                	test   ecx,ecx
  4016a8:	89 cb                	mov    ebx,ecx
  4016aa:	75 91                	jne    40163d <_setargv+0x7d>
  4016ac:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4016b0:	85 c0                	test   eax,eax
  4016b2:	0f 84 99 02 00 00    	je     401951 <_setargv+0x391>
  4016b8:	01 d0                	add    eax,edx
  4016ba:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  4016c0:	83 c2 01             	add    edx,0x1
  4016c3:	c6 42 ff 5c          	mov    BYTE PTR [edx-0x1],0x5c
  4016c7:	39 c2                	cmp    edx,eax
  4016c9:	75 f5                	jne    4016c0 <_setargv+0x100>
  4016cb:	39 45 cc             	cmp    DWORD PTR [ebp-0x34],eax
  4016ce:	0f 82 be 01 00 00    	jb     401892 <_setargv+0x2d2>
  4016d4:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
  4016d7:	85 d2                	test   edx,edx
  4016d9:	0f 85 b3 01 00 00    	jne    401892 <_setargv+0x2d2>
  4016df:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  4016e2:	a3 04 70 40 00       	mov    ds:0x407004,eax
  4016e7:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  4016ea:	a3 00 70 40 00       	mov    ds:0x407000,eax
  4016ef:	8b 65 c4             	mov    esp,DWORD PTR [ebp-0x3c]
  4016f2:	8d 65 f4             	lea    esp,[ebp-0xc]
  4016f5:	5b                   	pop    ebx
  4016f6:	5e                   	pop    esi
  4016f7:	5f                   	pop    edi
  4016f8:	5d                   	pop    ebp
  4016f9:	c3                   	ret    
  4016fa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401700:	80 fb 5c             	cmp    bl,0x5c
  401703:	0f 84 ea 00 00 00    	je     4017f3 <_setargv+0x233>
  401709:	80 fb 7f             	cmp    bl,0x7f
  40170c:	0f 84 c1 00 00 00    	je     4017d3 <_setargv+0x213>
  401712:	80 fb 5b             	cmp    bl,0x5b
  401715:	75 59                	jne    401770 <_setargv+0x1b0>
  401717:	f6 05 04 40 40 00 20 	test   BYTE PTR ds:0x404004,0x20
  40171e:	0f 85 af 00 00 00    	jne    4017d3 <_setargv+0x213>
  401724:	85 c0                	test   eax,eax
  401726:	8d 78 ff             	lea    edi,[eax-0x1]
  401729:	b9 01 00 00 00       	mov    ecx,0x1
  40172e:	74 32                	je     401762 <_setargv+0x1a2>
  401730:	8d 7c 3a 01          	lea    edi,[edx+edi*1+0x1]
  401734:	89 d0                	mov    eax,edx
  401736:	8d 76 00             	lea    esi,[esi+0x0]
  401739:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  401740:	83 c0 01             	add    eax,0x1
  401743:	c6 40 ff 5c          	mov    BYTE PTR [eax-0x1],0x5c
  401747:	39 f8                	cmp    eax,edi
  401749:	75 f5                	jne    401740 <_setargv+0x180>
  40174b:	84 c9                	test   cl,cl
  40174d:	75 11                	jne    401760 <_setargv+0x1a0>
  40174f:	8d 50 01             	lea    edx,[eax+0x1]
  401752:	88 18                	mov    BYTE PTR [eax],bl
  401754:	31 c0                	xor    eax,eax
  401756:	e9 d5 fe ff ff       	jmp    401630 <_setargv+0x70>
  40175b:	90                   	nop
  40175c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401760:	89 c2                	mov    edx,eax
  401762:	8d 42 01             	lea    eax,[edx+0x1]
  401765:	c6 02 7f             	mov    BYTE PTR [edx],0x7f
  401768:	eb e5                	jmp    40174f <_setargv+0x18f>
  40176a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401770:	85 c0                	test   eax,eax
  401772:	8d 3c 02             	lea    edi,[edx+eax*1]
  401775:	0f 84 c8 01 00 00    	je     401943 <_setargv+0x383>
  40177b:	90                   	nop
  40177c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401780:	83 c2 01             	add    edx,0x1
  401783:	c6 42 ff 5c          	mov    BYTE PTR [edx-0x1],0x5c
  401787:	39 fa                	cmp    edx,edi
  401789:	75 f5                	jne    401780 <_setargv+0x1c0>
  40178b:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  40178e:	85 c0                	test   eax,eax
  401790:	75 35                	jne    4017c7 <_setargv+0x207>
  401792:	a1 84 81 40 00       	mov    eax,ds:0x408184
  401797:	83 38 01             	cmp    DWORD PTR [eax],0x1
  40179a:	0f 84 c5 00 00 00    	je     401865 <_setargv+0x2a5>
  4017a0:	c7 44 24 04 40 00 00 	mov    DWORD PTR [esp+0x4],0x40
  4017a7:	00 
  4017a8:	89 0c 24             	mov    DWORD PTR [esp],ecx
  4017ab:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
  4017ae:	e8 25 24 00 00       	call   403bd8 <_isctype>
  4017b3:	85 c0                	test   eax,eax
  4017b5:	0f 85 bb 00 00 00    	jne    401876 <_setargv+0x2b6>
  4017bb:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  4017be:	83 f9 09             	cmp    ecx,0x9
  4017c1:	0f 84 af 00 00 00    	je     401876 <_setargv+0x2b6>
  4017c7:	8d 57 01             	lea    edx,[edi+0x1]
  4017ca:	88 1f                	mov    BYTE PTR [edi],bl
  4017cc:	31 c0                	xor    eax,eax
  4017ce:	e9 5d fe ff ff       	jmp    401630 <_setargv+0x70>
  4017d3:	85 c0                	test   eax,eax
  4017d5:	8d 78 ff             	lea    edi,[eax-0x1]
  4017d8:	0f 84 4e 01 00 00    	je     40192c <_setargv+0x36c>
  4017de:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  4017e1:	83 f9 7f             	cmp    ecx,0x7f
  4017e4:	0f 94 c1             	sete   cl
  4017e7:	85 c0                	test   eax,eax
  4017e9:	0f 95 c0             	setne  al
  4017ec:	09 c1                	or     ecx,eax
  4017ee:	e9 3d ff ff ff       	jmp    401730 <_setargv+0x170>
  4017f3:	83 7d d4 27          	cmp    DWORD PTR [ebp-0x2c],0x27
  4017f7:	0f 84 e4 00 00 00    	je     4018e1 <_setargv+0x321>
  4017fd:	83 c0 01             	add    eax,0x1
  401800:	e9 2b fe ff ff       	jmp    401630 <_setargv+0x70>
  401805:	f6 05 04 40 40 00 10 	test   BYTE PTR ds:0x404004,0x10
  40180c:	0f 84 5e ff ff ff    	je     401770 <_setargv+0x1b0>
  401812:	89 c1                	mov    ecx,eax
  401814:	d1 f9                	sar    ecx,1
  401816:	0f 84 3c 01 00 00    	je     401958 <_setargv+0x398>
  40181c:	01 d1                	add    ecx,edx
  40181e:	66 90                	xchg   ax,ax
  401820:	83 c2 01             	add    edx,0x1
  401823:	c6 42 ff 5c          	mov    BYTE PTR [edx-0x1],0x5c
  401827:	39 ca                	cmp    edx,ecx
  401829:	75 f5                	jne    401820 <_setargv+0x260>
  40182b:	83 7d d4 22          	cmp    DWORD PTR [ebp-0x2c],0x22
  40182f:	0f 84 98 00 00 00    	je     4018cd <_setargv+0x30d>
  401835:	a8 01                	test   al,0x1
  401837:	0f 85 90 00 00 00    	jne    4018cd <_setargv+0x30d>
  40183d:	83 75 d4 27          	xor    DWORD PTR [ebp-0x2c],0x27
  401841:	89 ca                	mov    edx,ecx
  401843:	31 c0                	xor    eax,eax
  401845:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [ebp-0x30],0x1
  40184c:	e9 df fd ff ff       	jmp    401630 <_setargv+0x70>
  401851:	8d 51 01             	lea    edx,[ecx+0x1]
  401854:	c6 01 22             	mov    BYTE PTR [ecx],0x22
  401857:	31 c0                	xor    eax,eax
  401859:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [ebp-0x30],0x1
  401860:	e9 cb fd ff ff       	jmp    401630 <_setargv+0x70>
  401865:	a1 b0 81 40 00       	mov    eax,ds:0x4081b0
  40186a:	8b 00                	mov    eax,DWORD PTR [eax]
  40186c:	f6 04 48 40          	test   BYTE PTR [eax+ecx*2],0x40
  401870:	0f 84 48 ff ff ff    	je     4017be <_setargv+0x1fe>
  401876:	39 7d cc             	cmp    DWORD PTR [ebp-0x34],edi
  401879:	72 75                	jb     4018f0 <_setargv+0x330>
  40187b:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  40187e:	85 c0                	test   eax,eax
  401880:	75 6e                	jne    4018f0 <_setargv+0x330>
  401882:	89 fa                	mov    edx,edi
  401884:	31 c0                	xor    eax,eax
  401886:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [ebp-0x30],0x0
  40188d:	e9 9e fd ff ff       	jmp    401630 <_setargv+0x70>
  401892:	c6 00 00             	mov    BYTE PTR [eax],0x0
  401895:	8d 45 d8             	lea    eax,[ebp-0x28]
  401898:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  40189f:	00 
  4018a0:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  4018a4:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  4018a7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4018ab:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  4018ae:	89 04 24             	mov    DWORD PTR [esp],eax
  4018b1:	e8 5a 18 00 00       	call   403110 <__mingw_glob>
  4018b6:	e9 24 fe ff ff       	jmp    4016df <_setargv+0x11f>
  4018bb:	90                   	nop
  4018bc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4018c0:	e8 db f9 ff ff       	call   4012a0 <_mingw32_init_mainargs>
  4018c5:	8d 65 f4             	lea    esp,[ebp-0xc]
  4018c8:	5b                   	pop    ebx
  4018c9:	5e                   	pop    esi
  4018ca:	5f                   	pop    edi
  4018cb:	5d                   	pop    ebp
  4018cc:	c3                   	ret    
  4018cd:	8d 51 01             	lea    edx,[ecx+0x1]
  4018d0:	c6 01 27             	mov    BYTE PTR [ecx],0x27
  4018d3:	31 c0                	xor    eax,eax
  4018d5:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [ebp-0x30],0x1
  4018dc:	e9 4f fd ff ff       	jmp    401630 <_setargv+0x70>
  4018e1:	c6 02 5c             	mov    BYTE PTR [edx],0x5c
  4018e4:	83 c2 01             	add    edx,0x1
  4018e7:	e9 44 fd ff ff       	jmp    401630 <_setargv+0x70>
  4018ec:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4018f0:	8d 45 d8             	lea    eax,[ebp-0x28]
  4018f3:	c6 07 00             	mov    BYTE PTR [edi],0x0
  4018f6:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  4018fd:	00 
  4018fe:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  401902:	8b 5d c8             	mov    ebx,DWORD PTR [ebp-0x38]
  401905:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
  401909:	8b 7d cc             	mov    edi,DWORD PTR [ebp-0x34]
  40190c:	89 3c 24             	mov    DWORD PTR [esp],edi
  40190f:	e8 fc 17 00 00       	call   403110 <__mingw_glob>
  401914:	89 d8                	mov    eax,ebx
  401916:	89 fa                	mov    edx,edi
  401918:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [ebp-0x30],0x0
  40191f:	83 c8 01             	or     eax,0x1
  401922:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  401925:	31 c0                	xor    eax,eax
  401927:	e9 04 fd ff ff       	jmp    401630 <_setargv+0x70>
  40192c:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  40192f:	85 c0                	test   eax,eax
  401931:	0f 95 c0             	setne  al
  401934:	83 f9 7f             	cmp    ecx,0x7f
  401937:	0f 94 c1             	sete   cl
  40193a:	09 c1                	or     ecx,eax
  40193c:	89 d0                	mov    eax,edx
  40193e:	e9 08 fe ff ff       	jmp    40174b <_setargv+0x18b>
  401943:	89 d7                	mov    edi,edx
  401945:	e9 41 fe ff ff       	jmp    40178b <_setargv+0x1cb>
  40194a:	89 d1                	mov    ecx,edx
  40194c:	e9 2d fd ff ff       	jmp    40167e <_setargv+0xbe>
  401951:	89 d0                	mov    eax,edx
  401953:	e9 73 fd ff ff       	jmp    4016cb <_setargv+0x10b>
  401958:	89 d1                	mov    ecx,edx
  40195a:	e9 cc fe ff ff       	jmp    40182b <_setargv+0x26b>
  40195f:	90                   	nop

00401960 <__cpu_features_init>:
  401960:	9c                   	pushf  
  401961:	9c                   	pushf  
  401962:	58                   	pop    eax
  401963:	89 c2                	mov    edx,eax
  401965:	35 00 00 20 00       	xor    eax,0x200000
  40196a:	50                   	push   eax
  40196b:	9d                   	popf   
  40196c:	9c                   	pushf  
  40196d:	58                   	pop    eax
  40196e:	9d                   	popf   
  40196f:	31 d0                	xor    eax,edx
  401971:	a9 00 00 20 00       	test   eax,0x200000
  401976:	0f 84 e9 00 00 00    	je     401a65 <__cpu_features_init+0x105>
  40197c:	53                   	push   ebx
  40197d:	31 c0                	xor    eax,eax
  40197f:	0f a2                	cpuid  
  401981:	85 c0                	test   eax,eax
  401983:	0f 84 db 00 00 00    	je     401a64 <__cpu_features_init+0x104>
  401989:	b8 01 00 00 00       	mov    eax,0x1
  40198e:	0f a2                	cpuid  
  401990:	31 c0                	xor    eax,eax
  401992:	f6 c6 01             	test   dh,0x1
  401995:	74 03                	je     40199a <__cpu_features_init+0x3a>
  401997:	83 c8 01             	or     eax,0x1
  40199a:	f6 c5 20             	test   ch,0x20
  40199d:	74 05                	je     4019a4 <__cpu_features_init+0x44>
  40199f:	0d 80 00 00 00       	or     eax,0x80
  4019a4:	f6 c6 80             	test   dh,0x80
  4019a7:	74 03                	je     4019ac <__cpu_features_init+0x4c>
  4019a9:	83 c8 02             	or     eax,0x2
  4019ac:	f7 c2 00 00 80 00    	test   edx,0x800000
  4019b2:	74 03                	je     4019b7 <__cpu_features_init+0x57>
  4019b4:	83 c8 04             	or     eax,0x4
  4019b7:	f7 c2 00 00 00 01    	test   edx,0x1000000
  4019bd:	74 6d                	je     401a2c <__cpu_features_init+0xcc>
  4019bf:	83 c8 08             	or     eax,0x8
  4019c2:	55                   	push   ebp
  4019c3:	89 e5                	mov    ebp,esp
  4019c5:	81 ec 00 02 00 00    	sub    esp,0x200
  4019cb:	83 e4 f0             	and    esp,0xfffffff0
  4019ce:	0f ae 04 24          	fxsave [esp]
  4019d2:	8b 9c 24 c8 00 00 00 	mov    ebx,DWORD PTR [esp+0xc8]
  4019d9:	81 b4 24 c8 00 00 00 	xor    DWORD PTR [esp+0xc8],0x13c0de
  4019e0:	de c0 13 00 
  4019e4:	0f ae 0c 24          	fxrstor [esp]
  4019e8:	89 9c 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],ebx
  4019ef:	0f ae 04 24          	fxsave [esp]
  4019f3:	87 9c 24 c8 00 00 00 	xchg   DWORD PTR [esp+0xc8],ebx
  4019fa:	0f ae 0c 24          	fxrstor [esp]
  4019fe:	33 9c 24 c8 00 00 00 	xor    ebx,DWORD PTR [esp+0xc8]
  401a05:	c9                   	leave  
  401a06:	81 fb de c0 13 00    	cmp    ebx,0x13c0de
  401a0c:	75 1e                	jne    401a2c <__cpu_features_init+0xcc>
  401a0e:	f7 c2 00 00 00 02    	test   edx,0x2000000
  401a14:	74 03                	je     401a19 <__cpu_features_init+0xb9>
  401a16:	83 c8 10             	or     eax,0x10
  401a19:	f7 c2 00 00 00 04    	test   edx,0x4000000
  401a1f:	74 03                	je     401a24 <__cpu_features_init+0xc4>
  401a21:	83 c8 20             	or     eax,0x20
  401a24:	f6 c1 01             	test   cl,0x1
  401a27:	74 03                	je     401a2c <__cpu_features_init+0xcc>
  401a29:	83 c8 40             	or     eax,0x40
  401a2c:	a3 24 70 40 00       	mov    ds:0x407024,eax
  401a31:	b8 00 00 00 80       	mov    eax,0x80000000
  401a36:	0f a2                	cpuid  
  401a38:	3d 00 00 00 80       	cmp    eax,0x80000000
  401a3d:	76 25                	jbe    401a64 <__cpu_features_init+0x104>
  401a3f:	b8 01 00 00 80       	mov    eax,0x80000001
  401a44:	0f a2                	cpuid  
  401a46:	31 c0                	xor    eax,eax
  401a48:	85 d2                	test   edx,edx
  401a4a:	79 05                	jns    401a51 <__cpu_features_init+0xf1>
  401a4c:	b8 00 01 00 00       	mov    eax,0x100
  401a51:	f7 c2 00 00 00 40    	test   edx,0x40000000
  401a57:	74 05                	je     401a5e <__cpu_features_init+0xfe>
  401a59:	0d 00 02 00 00       	or     eax,0x200
  401a5e:	09 05 24 70 40 00    	or     DWORD PTR ds:0x407024,eax
  401a64:	5b                   	pop    ebx
  401a65:	f3 c3                	repz ret 
  401a67:	90                   	nop
  401a68:	90                   	nop
  401a69:	90                   	nop
  401a6a:	90                   	nop
  401a6b:	90                   	nop
  401a6c:	90                   	nop
  401a6d:	90                   	nop
  401a6e:	90                   	nop
  401a6f:	90                   	nop

00401a70 <__do_global_dtors>:
  401a70:	a1 10 40 40 00       	mov    eax,ds:0x404010
  401a75:	8b 00                	mov    eax,DWORD PTR [eax]
  401a77:	85 c0                	test   eax,eax
  401a79:	74 1f                	je     401a9a <__do_global_dtors+0x2a>
  401a7b:	83 ec 0c             	sub    esp,0xc
  401a7e:	66 90                	xchg   ax,ax
  401a80:	ff d0                	call   eax
  401a82:	a1 10 40 40 00       	mov    eax,ds:0x404010
  401a87:	8d 50 04             	lea    edx,[eax+0x4]
  401a8a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  401a8d:	89 15 10 40 40 00    	mov    DWORD PTR ds:0x404010,edx
  401a93:	85 c0                	test   eax,eax
  401a95:	75 e9                	jne    401a80 <__do_global_dtors+0x10>
  401a97:	83 c4 0c             	add    esp,0xc
  401a9a:	f3 c3                	repz ret 
  401a9c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00401aa0 <__do_global_ctors>:
  401aa0:	53                   	push   ebx
  401aa1:	83 ec 18             	sub    esp,0x18
  401aa4:	8b 1d c0 3c 40 00    	mov    ebx,DWORD PTR ds:0x403cc0
  401aaa:	83 fb ff             	cmp    ebx,0xffffffff
  401aad:	74 21                	je     401ad0 <__do_global_ctors+0x30>
  401aaf:	85 db                	test   ebx,ebx
  401ab1:	74 0c                	je     401abf <__do_global_ctors+0x1f>
  401ab3:	ff 14 9d c0 3c 40 00 	call   DWORD PTR [ebx*4+0x403cc0]
  401aba:	83 eb 01             	sub    ebx,0x1
  401abd:	75 f4                	jne    401ab3 <__do_global_ctors+0x13>
  401abf:	c7 04 24 70 1a 40 00 	mov    DWORD PTR [esp],0x401a70
  401ac6:	e8 55 f8 ff ff       	call   401320 <atexit>
  401acb:	83 c4 18             	add    esp,0x18
  401ace:	5b                   	pop    ebx
  401acf:	c3                   	ret    
  401ad0:	31 db                	xor    ebx,ebx
  401ad2:	eb 02                	jmp    401ad6 <__do_global_ctors+0x36>
  401ad4:	89 c3                	mov    ebx,eax
  401ad6:	8d 43 01             	lea    eax,[ebx+0x1]
  401ad9:	8b 14 85 c0 3c 40 00 	mov    edx,DWORD PTR [eax*4+0x403cc0]
  401ae0:	85 d2                	test   edx,edx
  401ae2:	75 f0                	jne    401ad4 <__do_global_ctors+0x34>
  401ae4:	eb c9                	jmp    401aaf <__do_global_ctors+0xf>
  401ae6:	8d 76 00             	lea    esi,[esi+0x0]
  401ae9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401af0 <__main>:
  401af0:	a1 28 70 40 00       	mov    eax,ds:0x407028
  401af5:	85 c0                	test   eax,eax
  401af7:	74 07                	je     401b00 <__main+0x10>
  401af9:	f3 c3                	repz ret 
  401afb:	90                   	nop
  401afc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401b00:	c7 05 28 70 40 00 01 	mov    DWORD PTR ds:0x407028,0x1
  401b07:	00 00 00 
  401b0a:	eb 94                	jmp    401aa0 <__do_global_ctors>
  401b0c:	90                   	nop
  401b0d:	90                   	nop
  401b0e:	90                   	nop
  401b0f:	90                   	nop

00401b10 <.text>:
  401b10:	83 ec 1c             	sub    esp,0x1c
  401b13:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401b17:	83 f8 03             	cmp    eax,0x3
  401b1a:	74 14                	je     401b30 <.text+0x20>
  401b1c:	85 c0                	test   eax,eax
  401b1e:	74 10                	je     401b30 <.text+0x20>
  401b20:	b8 01 00 00 00       	mov    eax,0x1
  401b25:	83 c4 1c             	add    esp,0x1c
  401b28:	c2 0c 00             	ret    0xc
  401b2b:	90                   	nop
  401b2c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401b30:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  401b34:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401b38:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401b3c:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  401b40:	89 04 24             	mov    DWORD PTR [esp],eax
  401b43:	e8 48 02 00 00       	call   401d90 <__mingw_TLScallback>
  401b48:	b8 01 00 00 00       	mov    eax,0x1
  401b4d:	83 c4 1c             	add    esp,0x1c
  401b50:	c2 0c 00             	ret    0xc
  401b53:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401b59:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401b60 <__dyn_tls_init@12>:
  401b60:	56                   	push   esi
  401b61:	53                   	push   ebx
  401b62:	83 ec 14             	sub    esp,0x14
  401b65:	83 3d 64 70 40 00 02 	cmp    DWORD PTR ds:0x407064,0x2
  401b6c:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401b70:	74 0a                	je     401b7c <__dyn_tls_init@12+0x1c>
  401b72:	c7 05 64 70 40 00 02 	mov    DWORD PTR ds:0x407064,0x2
  401b79:	00 00 00 
  401b7c:	83 f8 02             	cmp    eax,0x2
  401b7f:	74 12                	je     401b93 <__dyn_tls_init@12+0x33>
  401b81:	83 f8 01             	cmp    eax,0x1
  401b84:	74 3f                	je     401bc5 <__dyn_tls_init@12+0x65>
  401b86:	83 c4 14             	add    esp,0x14
  401b89:	b8 01 00 00 00       	mov    eax,0x1
  401b8e:	5b                   	pop    ebx
  401b8f:	5e                   	pop    esi
  401b90:	c2 0c 00             	ret    0xc
  401b93:	be 14 90 40 00       	mov    esi,0x409014
  401b98:	81 ee 14 90 40 00    	sub    esi,0x409014
  401b9e:	83 fe 03             	cmp    esi,0x3
  401ba1:	7e e3                	jle    401b86 <__dyn_tls_init@12+0x26>
  401ba3:	31 db                	xor    ebx,ebx
  401ba5:	8b 83 14 90 40 00    	mov    eax,DWORD PTR [ebx+0x409014]
  401bab:	85 c0                	test   eax,eax
  401bad:	74 02                	je     401bb1 <__dyn_tls_init@12+0x51>
  401baf:	ff d0                	call   eax
  401bb1:	83 c3 04             	add    ebx,0x4
  401bb4:	39 de                	cmp    esi,ebx
  401bb6:	75 ed                	jne    401ba5 <__dyn_tls_init@12+0x45>
  401bb8:	83 c4 14             	add    esp,0x14
  401bbb:	b8 01 00 00 00       	mov    eax,0x1
  401bc0:	5b                   	pop    ebx
  401bc1:	5e                   	pop    esi
  401bc2:	c2 0c 00             	ret    0xc
  401bc5:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  401bc9:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  401bd0:	00 
  401bd1:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  401bd5:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401bd9:	89 04 24             	mov    DWORD PTR [esp],eax
  401bdc:	e8 af 01 00 00       	call   401d90 <__mingw_TLScallback>
  401be1:	eb a3                	jmp    401b86 <__dyn_tls_init@12+0x26>
  401be3:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401be9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401bf0 <__tlregdtor>:
  401bf0:	31 c0                	xor    eax,eax
  401bf2:	c3                   	ret    
  401bf3:	90                   	nop
  401bf4:	90                   	nop
  401bf5:	90                   	nop
  401bf6:	90                   	nop
  401bf7:	90                   	nop
  401bf8:	90                   	nop
  401bf9:	90                   	nop
  401bfa:	90                   	nop
  401bfb:	90                   	nop
  401bfc:	90                   	nop
  401bfd:	90                   	nop
  401bfe:	90                   	nop
  401bff:	90                   	nop

00401c00 <.text>:
  401c00:	56                   	push   esi
  401c01:	53                   	push   ebx
  401c02:	83 ec 14             	sub    esp,0x14
  401c05:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401c0c:	e8 7f 20 00 00       	call   403c90 <EnterCriticalSection@4>
  401c11:	8b 1d 3c 70 40 00    	mov    ebx,DWORD PTR ds:0x40703c
  401c17:	83 ec 04             	sub    esp,0x4
  401c1a:	85 db                	test   ebx,ebx
  401c1c:	74 2d                	je     401c4b <.text+0x4b>
  401c1e:	66 90                	xchg   ax,ax
  401c20:	8b 03                	mov    eax,DWORD PTR [ebx]
  401c22:	89 04 24             	mov    DWORD PTR [esp],eax
  401c25:	e8 f6 1f 00 00       	call   403c20 <TlsGetValue@4>
  401c2a:	83 ec 04             	sub    esp,0x4
  401c2d:	89 c6                	mov    esi,eax
  401c2f:	e8 24 20 00 00       	call   403c58 <GetLastError@0>
  401c34:	85 c0                	test   eax,eax
  401c36:	75 0c                	jne    401c44 <.text+0x44>
  401c38:	85 f6                	test   esi,esi
  401c3a:	74 08                	je     401c44 <.text+0x44>
  401c3c:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  401c3f:	89 34 24             	mov    DWORD PTR [esp],esi
  401c42:	ff d0                	call   eax
  401c44:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
  401c47:	85 db                	test   ebx,ebx
  401c49:	75 d5                	jne    401c20 <.text+0x20>
  401c4b:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401c52:	e8 e1 1f 00 00       	call   403c38 <LeaveCriticalSection@4>
  401c57:	83 ec 04             	sub    esp,0x4
  401c5a:	83 c4 14             	add    esp,0x14
  401c5d:	5b                   	pop    ebx
  401c5e:	5e                   	pop    esi
  401c5f:	c3                   	ret    

00401c60 <___w64_mingwthr_add_key_dtor>:
  401c60:	56                   	push   esi
  401c61:	53                   	push   ebx
  401c62:	31 f6                	xor    esi,esi
  401c64:	83 ec 14             	sub    esp,0x14
  401c67:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401c6c:	85 c0                	test   eax,eax
  401c6e:	75 10                	jne    401c80 <___w64_mingwthr_add_key_dtor+0x20>
  401c70:	83 c4 14             	add    esp,0x14
  401c73:	89 f0                	mov    eax,esi
  401c75:	5b                   	pop    ebx
  401c76:	5e                   	pop    esi
  401c77:	c3                   	ret    
  401c78:	90                   	nop
  401c79:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401c80:	c7 44 24 04 0c 00 00 	mov    DWORD PTR [esp+0x4],0xc
  401c87:	00 
  401c88:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
  401c8f:	e8 2c 1f 00 00       	call   403bc0 <calloc>
  401c94:	85 c0                	test   eax,eax
  401c96:	89 c3                	mov    ebx,eax
  401c98:	74 41                	je     401cdb <___w64_mingwthr_add_key_dtor+0x7b>
  401c9a:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401c9e:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401ca5:	89 03                	mov    DWORD PTR [ebx],eax
  401ca7:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401cab:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  401cae:	e8 dd 1f 00 00       	call   403c90 <EnterCriticalSection@4>
  401cb3:	a1 3c 70 40 00       	mov    eax,ds:0x40703c
  401cb8:	83 ec 04             	sub    esp,0x4
  401cbb:	89 1d 3c 70 40 00    	mov    DWORD PTR ds:0x40703c,ebx
  401cc1:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401cc8:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  401ccb:	e8 68 1f 00 00       	call   403c38 <LeaveCriticalSection@4>
  401cd0:	83 ec 04             	sub    esp,0x4
  401cd3:	89 f0                	mov    eax,esi
  401cd5:	83 c4 14             	add    esp,0x14
  401cd8:	5b                   	pop    ebx
  401cd9:	5e                   	pop    esi
  401cda:	c3                   	ret    
  401cdb:	be ff ff ff ff       	mov    esi,0xffffffff
  401ce0:	eb 8e                	jmp    401c70 <___w64_mingwthr_add_key_dtor+0x10>
  401ce2:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401ce9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401cf0 <___w64_mingwthr_remove_key_dtor>:
  401cf0:	53                   	push   ebx
  401cf1:	83 ec 18             	sub    esp,0x18
  401cf4:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401cf9:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  401cfd:	85 c0                	test   eax,eax
  401cff:	75 0f                	jne    401d10 <___w64_mingwthr_remove_key_dtor+0x20>
  401d01:	83 c4 18             	add    esp,0x18
  401d04:	31 c0                	xor    eax,eax
  401d06:	5b                   	pop    ebx
  401d07:	c3                   	ret    
  401d08:	90                   	nop
  401d09:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401d10:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401d17:	e8 74 1f 00 00       	call   403c90 <EnterCriticalSection@4>
  401d1c:	8b 15 3c 70 40 00    	mov    edx,DWORD PTR ds:0x40703c
  401d22:	83 ec 04             	sub    esp,0x4
  401d25:	85 d2                	test   edx,edx
  401d27:	74 17                	je     401d40 <___w64_mingwthr_remove_key_dtor+0x50>
  401d29:	8b 02                	mov    eax,DWORD PTR [edx]
  401d2b:	39 c3                	cmp    ebx,eax
  401d2d:	75 0a                	jne    401d39 <___w64_mingwthr_remove_key_dtor+0x49>
  401d2f:	eb 4e                	jmp    401d7f <___w64_mingwthr_remove_key_dtor+0x8f>
  401d31:	8b 08                	mov    ecx,DWORD PTR [eax]
  401d33:	39 d9                	cmp    ecx,ebx
  401d35:	74 29                	je     401d60 <___w64_mingwthr_remove_key_dtor+0x70>
  401d37:	89 c2                	mov    edx,eax
  401d39:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  401d3c:	85 c0                	test   eax,eax
  401d3e:	75 f1                	jne    401d31 <___w64_mingwthr_remove_key_dtor+0x41>
  401d40:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401d47:	e8 ec 1e 00 00       	call   403c38 <LeaveCriticalSection@4>
  401d4c:	83 ec 04             	sub    esp,0x4
  401d4f:	83 c4 18             	add    esp,0x18
  401d52:	31 c0                	xor    eax,eax
  401d54:	5b                   	pop    ebx
  401d55:	c3                   	ret    
  401d56:	8d 76 00             	lea    esi,[esi+0x0]
  401d59:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  401d60:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  401d63:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  401d66:	89 04 24             	mov    DWORD PTR [esp],eax
  401d69:	e8 4a 1e 00 00       	call   403bb8 <free>
  401d6e:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401d75:	e8 be 1e 00 00       	call   403c38 <LeaveCriticalSection@4>
  401d7a:	83 ec 04             	sub    esp,0x4
  401d7d:	eb d0                	jmp    401d4f <___w64_mingwthr_remove_key_dtor+0x5f>
  401d7f:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  401d82:	a3 3c 70 40 00       	mov    ds:0x40703c,eax
  401d87:	89 d0                	mov    eax,edx
  401d89:	eb db                	jmp    401d66 <___w64_mingwthr_remove_key_dtor+0x76>
  401d8b:	90                   	nop
  401d8c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00401d90 <__mingw_TLScallback>:
  401d90:	83 ec 1c             	sub    esp,0x1c
  401d93:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401d97:	83 f8 01             	cmp    eax,0x1
  401d9a:	74 47                	je     401de3 <__mingw_TLScallback+0x53>
  401d9c:	72 17                	jb     401db5 <__mingw_TLScallback+0x25>
  401d9e:	83 f8 03             	cmp    eax,0x3
  401da1:	75 09                	jne    401dac <__mingw_TLScallback+0x1c>
  401da3:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401da8:	85 c0                	test   eax,eax
  401daa:	75 65                	jne    401e11 <__mingw_TLScallback+0x81>
  401dac:	b8 01 00 00 00       	mov    eax,0x1
  401db1:	83 c4 1c             	add    esp,0x1c
  401db4:	c3                   	ret    
  401db5:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401dba:	85 c0                	test   eax,eax
  401dbc:	75 62                	jne    401e20 <__mingw_TLScallback+0x90>
  401dbe:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401dc3:	83 f8 01             	cmp    eax,0x1
  401dc6:	75 e4                	jne    401dac <__mingw_TLScallback+0x1c>
  401dc8:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401dcf:	c7 05 40 70 40 00 00 	mov    DWORD PTR ds:0x407040,0x0
  401dd6:	00 00 00 
  401dd9:	e8 ba 1e 00 00       	call   403c98 <DeleteCriticalSection@4>
  401dde:	83 ec 04             	sub    esp,0x4
  401de1:	eb c9                	jmp    401dac <__mingw_TLScallback+0x1c>
  401de3:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401de8:	85 c0                	test   eax,eax
  401dea:	74 14                	je     401e00 <__mingw_TLScallback+0x70>
  401dec:	c7 05 40 70 40 00 01 	mov    DWORD PTR ds:0x407040,0x1
  401df3:	00 00 00 
  401df6:	b8 01 00 00 00       	mov    eax,0x1
  401dfb:	83 c4 1c             	add    esp,0x1c
  401dfe:	c3                   	ret    
  401dff:	90                   	nop
  401e00:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401e07:	e8 34 1e 00 00       	call   403c40 <InitializeCriticalSection@4>
  401e0c:	83 ec 04             	sub    esp,0x4
  401e0f:	eb db                	jmp    401dec <__mingw_TLScallback+0x5c>
  401e11:	e8 ea fd ff ff       	call   401c00 <.text>
  401e16:	eb 94                	jmp    401dac <__mingw_TLScallback+0x1c>
  401e18:	90                   	nop
  401e19:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401e20:	e8 db fd ff ff       	call   401c00 <.text>
  401e25:	eb 97                	jmp    401dbe <__mingw_TLScallback+0x2e>
  401e27:	90                   	nop
  401e28:	90                   	nop
  401e29:	90                   	nop
  401e2a:	90                   	nop
  401e2b:	90                   	nop
  401e2c:	90                   	nop
  401e2d:	90                   	nop
  401e2e:	90                   	nop
  401e2f:	90                   	nop

00401e30 <.text>:
  401e30:	56                   	push   esi
  401e31:	53                   	push   ebx
  401e32:	83 ec 14             	sub    esp,0x14
  401e35:	a1 a4 81 40 00       	mov    eax,ds:0x4081a4
  401e3a:	c7 44 24 08 17 00 00 	mov    DWORD PTR [esp+0x8],0x17
  401e41:	00 
  401e42:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  401e49:	00 
  401e4a:	8d 74 24 24          	lea    esi,[esp+0x24]
  401e4e:	c7 04 24 84 51 40 00 	mov    DWORD PTR [esp],0x405184
  401e55:	8d 58 40             	lea    ebx,[eax+0x40]
  401e58:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  401e5c:	e8 4f 1d 00 00       	call   403bb0 <fwrite>
  401e61:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401e65:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
  401e69:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401e6c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401e70:	e8 e3 1c 00 00       	call   403b58 <vfprintf>
  401e75:	e8 4e 1d 00 00       	call   403bc8 <abort>
  401e7a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401e80:	55                   	push   ebp
  401e81:	57                   	push   edi
  401e82:	89 cf                	mov    edi,ecx
  401e84:	56                   	push   esi
  401e85:	53                   	push   ebx
  401e86:	89 c3                	mov    ebx,eax
  401e88:	89 d6                	mov    esi,edx
  401e8a:	83 ec 4c             	sub    esp,0x4c
  401e8d:	8d 44 24 24          	lea    eax,[esp+0x24]
  401e91:	c7 44 24 08 1c 00 00 	mov    DWORD PTR [esp+0x8],0x1c
  401e98:	00 
  401e99:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401e9c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401ea0:	e8 6b 1d 00 00       	call   403c10 <VirtualQuery@12>
  401ea5:	83 ec 0c             	sub    esp,0xc
  401ea8:	85 c0                	test   eax,eax
  401eaa:	0f 84 a8 00 00 00    	je     401f58 <.text+0x128>
  401eb0:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  401eb4:	83 f8 40             	cmp    eax,0x40
  401eb7:	74 05                	je     401ebe <.text+0x8e>
  401eb9:	83 f8 04             	cmp    eax,0x4
  401ebc:	75 22                	jne    401ee0 <.text+0xb0>
  401ebe:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
  401ec2:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  401ec6:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401ec9:	e8 ca 1c 00 00       	call   403b98 <memcpy>
  401ece:	83 c4 4c             	add    esp,0x4c
  401ed1:	5b                   	pop    ebx
  401ed2:	5e                   	pop    esi
  401ed3:	5f                   	pop    edi
  401ed4:	5d                   	pop    ebp
  401ed5:	c3                   	ret    
  401ed6:	8d 76 00             	lea    esi,[esi+0x0]
  401ed9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  401ee0:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  401ee4:	8d 6c 24 20          	lea    ebp,[esp+0x20]
  401ee8:	c7 44 24 08 40 00 00 	mov    DWORD PTR [esp+0x8],0x40
  401eef:	00 
  401ef0:	89 6c 24 0c          	mov    DWORD PTR [esp+0xc],ebp
  401ef4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401ef8:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401efc:	89 04 24             	mov    DWORD PTR [esp],eax
  401eff:	e8 14 1d 00 00       	call   403c18 <VirtualProtect@16>
  401f04:	83 ec 10             	sub    esp,0x10
  401f07:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  401f0b:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
  401f0f:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  401f13:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401f16:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  401f1a:	e8 79 1c 00 00       	call   403b98 <memcpy>
  401f1f:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  401f23:	83 fa 40             	cmp    edx,0x40
  401f26:	74 a6                	je     401ece <.text+0x9e>
  401f28:	83 fa 04             	cmp    edx,0x4
  401f2b:	74 a1                	je     401ece <.text+0x9e>
  401f2d:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401f31:	89 6c 24 0c          	mov    DWORD PTR [esp+0xc],ebp
  401f35:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  401f39:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  401f3d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401f41:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401f45:	89 04 24             	mov    DWORD PTR [esp],eax
  401f48:	e8 cb 1c 00 00       	call   403c18 <VirtualProtect@16>
  401f4d:	83 ec 10             	sub    esp,0x10
  401f50:	83 c4 4c             	add    esp,0x4c
  401f53:	5b                   	pop    ebx
  401f54:	5e                   	pop    esi
  401f55:	5f                   	pop    edi
  401f56:	5d                   	pop    ebp
  401f57:	c3                   	ret    
  401f58:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
  401f5c:	c7 44 24 04 1c 00 00 	mov    DWORD PTR [esp+0x4],0x1c
  401f63:	00 
  401f64:	c7 04 24 9c 51 40 00 	mov    DWORD PTR [esp],0x40519c
  401f6b:	e8 c0 fe ff ff       	call   401e30 <.text>

00401f70 <_pei386_runtime_relocator>:
  401f70:	a1 5c 70 40 00       	mov    eax,ds:0x40705c
  401f75:	85 c0                	test   eax,eax
  401f77:	74 07                	je     401f80 <_pei386_runtime_relocator+0x10>
  401f79:	c3                   	ret    
  401f7a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401f80:	b8 ec 53 40 00       	mov    eax,0x4053ec
  401f85:	c7 05 5c 70 40 00 01 	mov    DWORD PTR ds:0x40705c,0x1
  401f8c:	00 00 00 
  401f8f:	2d ec 53 40 00       	sub    eax,0x4053ec
  401f94:	83 f8 07             	cmp    eax,0x7
  401f97:	7e e0                	jle    401f79 <_pei386_runtime_relocator+0x9>
  401f99:	57                   	push   edi
  401f9a:	56                   	push   esi
  401f9b:	53                   	push   ebx
  401f9c:	83 ec 20             	sub    esp,0x20
  401f9f:	83 f8 0b             	cmp    eax,0xb
  401fa2:	0f 8e e8 00 00 00    	jle    402090 <_pei386_runtime_relocator+0x120>
  401fa8:	8b 35 ec 53 40 00    	mov    esi,DWORD PTR ds:0x4053ec
  401fae:	85 f6                	test   esi,esi
  401fb0:	0f 85 8f 00 00 00    	jne    402045 <_pei386_runtime_relocator+0xd5>
  401fb6:	8b 1d f0 53 40 00    	mov    ebx,DWORD PTR ds:0x4053f0
  401fbc:	85 db                	test   ebx,ebx
  401fbe:	0f 85 81 00 00 00    	jne    402045 <_pei386_runtime_relocator+0xd5>
  401fc4:	8b 0d f4 53 40 00    	mov    ecx,DWORD PTR ds:0x4053f4
  401fca:	bb f8 53 40 00       	mov    ebx,0x4053f8
  401fcf:	85 c9                	test   ecx,ecx
  401fd1:	0f 84 be 00 00 00    	je     402095 <_pei386_runtime_relocator+0x125>
  401fd7:	bb ec 53 40 00       	mov    ebx,0x4053ec
  401fdc:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  401fdf:	83 f8 01             	cmp    eax,0x1
  401fe2:	0f 85 43 01 00 00    	jne    40212b <_pei386_runtime_relocator+0x1bb>
  401fe8:	83 c3 0c             	add    ebx,0xc
  401feb:	81 fb ec 53 40 00    	cmp    ebx,0x4053ec
  401ff1:	0f 83 89 00 00 00    	jae    402080 <_pei386_runtime_relocator+0x110>
  401ff7:	8b 13                	mov    edx,DWORD PTR [ebx]
  401ff9:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
  401ffc:	8d b2 00 00 40 00    	lea    esi,[edx+0x400000]
  402002:	8b 8a 00 00 40 00    	mov    ecx,DWORD PTR [edx+0x400000]
  402008:	0f b6 53 08          	movzx  edx,BYTE PTR [ebx+0x8]
  40200c:	8d 87 00 00 40 00    	lea    eax,[edi+0x400000]
  402012:	83 fa 10             	cmp    edx,0x10
  402015:	0f 84 95 00 00 00    	je     4020b0 <_pei386_runtime_relocator+0x140>
  40201b:	83 fa 20             	cmp    edx,0x20
  40201e:	0f 84 ec 00 00 00    	je     402110 <_pei386_runtime_relocator+0x1a0>
  402024:	83 fa 08             	cmp    edx,0x8
  402027:	0f 84 b3 00 00 00    	je     4020e0 <_pei386_runtime_relocator+0x170>
  40202d:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  402031:	c7 04 24 04 52 40 00 	mov    DWORD PTR [esp],0x405204
  402038:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  40203f:	00 
  402040:	e8 eb fd ff ff       	call   401e30 <.text>
  402045:	bb ec 53 40 00       	mov    ebx,0x4053ec
  40204a:	81 fb ec 53 40 00    	cmp    ebx,0x4053ec
  402050:	73 2e                	jae    402080 <_pei386_runtime_relocator+0x110>
  402052:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  402055:	8b 13                	mov    edx,DWORD PTR [ebx]
  402057:	83 c3 08             	add    ebx,0x8
  40205a:	03 91 00 00 40 00    	add    edx,DWORD PTR [ecx+0x400000]
  402060:	8d 81 00 00 40 00    	lea    eax,[ecx+0x400000]
  402066:	b9 04 00 00 00       	mov    ecx,0x4
  40206b:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  40206f:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  402073:	e8 08 fe ff ff       	call   401e80 <.text+0x50>
  402078:	81 fb ec 53 40 00    	cmp    ebx,0x4053ec
  40207e:	72 d2                	jb     402052 <_pei386_runtime_relocator+0xe2>
  402080:	83 c4 20             	add    esp,0x20
  402083:	5b                   	pop    ebx
  402084:	5e                   	pop    esi
  402085:	5f                   	pop    edi
  402086:	c3                   	ret    
  402087:	89 f6                	mov    esi,esi
  402089:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  402090:	bb ec 53 40 00       	mov    ebx,0x4053ec
  402095:	8b 13                	mov    edx,DWORD PTR [ebx]
  402097:	85 d2                	test   edx,edx
  402099:	75 af                	jne    40204a <_pei386_runtime_relocator+0xda>
  40209b:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  40209e:	85 c0                	test   eax,eax
  4020a0:	0f 84 36 ff ff ff    	je     401fdc <_pei386_runtime_relocator+0x6c>
  4020a6:	eb a2                	jmp    40204a <_pei386_runtime_relocator+0xda>
  4020a8:	90                   	nop
  4020a9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  4020b0:	0f b7 97 00 00 40 00 	movzx  edx,WORD PTR [edi+0x400000]
  4020b7:	66 85 d2             	test   dx,dx
  4020ba:	79 06                	jns    4020c2 <_pei386_runtime_relocator+0x152>
  4020bc:	81 ca 00 00 ff ff    	or     edx,0xffff0000
  4020c2:	29 f2                	sub    edx,esi
  4020c4:	01 d1                	add    ecx,edx
  4020c6:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  4020ca:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  4020ce:	b9 02 00 00 00       	mov    ecx,0x2
  4020d3:	e8 a8 fd ff ff       	call   401e80 <.text+0x50>
  4020d8:	e9 0b ff ff ff       	jmp    401fe8 <_pei386_runtime_relocator+0x78>
  4020dd:	8d 76 00             	lea    esi,[esi+0x0]
  4020e0:	0f b6 38             	movzx  edi,BYTE PTR [eax]
  4020e3:	89 fa                	mov    edx,edi
  4020e5:	84 d2                	test   dl,dl
  4020e7:	79 06                	jns    4020ef <_pei386_runtime_relocator+0x17f>
  4020e9:	81 cf 00 ff ff ff    	or     edi,0xffffff00
  4020ef:	29 f7                	sub    edi,esi
  4020f1:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  4020f5:	01 f9                	add    ecx,edi
  4020f7:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  4020fb:	b9 01 00 00 00       	mov    ecx,0x1
  402100:	e8 7b fd ff ff       	call   401e80 <.text+0x50>
  402105:	e9 de fe ff ff       	jmp    401fe8 <_pei386_runtime_relocator+0x78>
  40210a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  402110:	29 f1                	sub    ecx,esi
  402112:	03 08                	add    ecx,DWORD PTR [eax]
  402114:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  402118:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  40211c:	b9 04 00 00 00       	mov    ecx,0x4
  402121:	e8 5a fd ff ff       	call   401e80 <.text+0x50>
  402126:	e9 bd fe ff ff       	jmp    401fe8 <_pei386_runtime_relocator+0x78>
  40212b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  40212f:	c7 04 24 d0 51 40 00 	mov    DWORD PTR [esp],0x4051d0
  402136:	e8 f5 fc ff ff       	call   401e30 <.text>
  40213b:	90                   	nop
  40213c:	90                   	nop
  40213d:	90                   	nop
  40213e:	90                   	nop
  40213f:	90                   	nop

00402140 <__chkstk_ms>:
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:163
  402140:	51                   	push   ecx
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:165
  402141:	50                   	push   eax
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:167
  402142:	3d 00 10 00 00       	cmp    eax,0x1000
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:168
  402147:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:169
  40214b:	72 15                	jb     402162 <__chkstk_ms+0x22>
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:171
  40214d:	81 e9 00 10 00 00    	sub    ecx,0x1000
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:172
  402153:	83 09 00             	or     DWORD PTR [ecx],0x0
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:173
  402156:	2d 00 10 00 00       	sub    eax,0x1000
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:174
  40215b:	3d 00 10 00 00       	cmp    eax,0x1000
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:175
  402160:	77 eb                	ja     40214d <__chkstk_ms+0xd>
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:177
  402162:	29 c1                	sub    ecx,eax
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:178
  402164:	83 09 00             	or     DWORD PTR [ecx],0x0
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:180
  402167:	58                   	pop    eax
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:182
  402168:	59                   	pop    ecx
/home/keith/src/mingw/gcc-build/gcc-6.3.0-mingw32-cross-native/mingw32/libgcc/../../../src/gcc-6.3.0/libgcc/config/i386/cygwin.S:184
  402169:	c3                   	ret    
  40216a:	90                   	nop
  40216b:	90                   	nop

0040216c <.text>:
  40216c:	66 90                	xchg   ax,ax
  40216e:	66 90                	xchg   ax,ax

00402170 <fesetenv>:
  402170:	83 ec 1c             	sub    esp,0x1c
  402173:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  402177:	c7 44 24 0c 80 1f 00 	mov    DWORD PTR [esp+0xc],0x1f80
  40217e:	00 
  40217f:	83 f8 fd             	cmp    eax,0xfffffffd
  402182:	74 31                	je     4021b5 <fesetenv+0x45>
  402184:	83 f8 fc             	cmp    eax,0xfffffffc
  402187:	74 3a                	je     4021c3 <fesetenv+0x53>
  402189:	85 c0                	test   eax,eax
  40218b:	74 48                	je     4021d5 <fesetenv+0x65>
  40218d:	83 f8 ff             	cmp    eax,0xffffffff
  402190:	74 2d                	je     4021bf <fesetenv+0x4f>
  402192:	83 f8 fe             	cmp    eax,0xfffffffe
  402195:	74 36                	je     4021cd <fesetenv+0x5d>
  402197:	d9 20                	fldenv [eax]
  402199:	0f b7 40 1c          	movzx  eax,WORD PTR [eax+0x1c]
  40219d:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  4021a1:	f6 05 24 70 40 00 10 	test   BYTE PTR ds:0x407024,0x10
  4021a8:	74 05                	je     4021af <fesetenv+0x3f>
  4021aa:	0f ae 54 24 0c       	ldmxcsr DWORD PTR [esp+0xc]
  4021af:	31 c0                	xor    eax,eax
  4021b1:	83 c4 1c             	add    esp,0x1c
  4021b4:	c3                   	ret    
  4021b5:	c7 05 14 40 40 00 ff 	mov    DWORD PTR ds:0x404014,0xffffffff
  4021bc:	ff ff ff 
  4021bf:	db e3                	fninit 
  4021c1:	eb de                	jmp    4021a1 <fesetenv+0x31>
  4021c3:	c7 05 14 40 40 00 fe 	mov    DWORD PTR ds:0x404014,0xfffffffe
  4021ca:	ff ff ff 
  4021cd:	ff 15 9c 81 40 00    	call   DWORD PTR ds:0x40819c
  4021d3:	eb cc                	jmp    4021a1 <fesetenv+0x31>
  4021d5:	a1 14 40 40 00       	mov    eax,ds:0x404014
  4021da:	eb b1                	jmp    40218d <fesetenv+0x1d>
  4021dc:	90                   	nop
  4021dd:	90                   	nop
  4021de:	90                   	nop
  4021df:	90                   	nop

004021e0 <.text>:
  4021e0:	85 c0                	test   eax,eax
  4021e2:	0f 84 82 00 00 00    	je     40226a <.text+0x8a>
  4021e8:	56                   	push   esi
  4021e9:	53                   	push   ebx
  4021ea:	89 d3                	mov    ebx,edx
  4021ec:	c1 eb 05             	shr    ebx,0x5
  4021ef:	31 c9                	xor    ecx,ecx
  4021f1:	83 f3 01             	xor    ebx,0x1
  4021f4:	83 e3 01             	and    ebx,0x1
  4021f7:	89 f6                	mov    esi,esi
  4021f9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  402200:	0f be 10             	movsx  edx,BYTE PTR [eax]
  402203:	85 d2                	test   edx,edx
  402205:	74 29                	je     402230 <.text+0x50>
  402207:	84 db                	test   bl,bl
  402209:	74 05                	je     402210 <.text+0x30>
  40220b:	83 fa 7f             	cmp    edx,0x7f
  40220e:	74 40                	je     402250 <.text+0x70>
  402210:	83 c0 01             	add    eax,0x1
  402213:	85 c9                	test   ecx,ecx
  402215:	75 1e                	jne    402235 <.text+0x55>
  402217:	83 fa 2a             	cmp    edx,0x2a
  40221a:	74 44                	je     402260 <.text+0x80>
  40221c:	83 fa 3f             	cmp    edx,0x3f
  40221f:	74 3f                	je     402260 <.text+0x80>
  402221:	31 c9                	xor    ecx,ecx
  402223:	83 fa 5b             	cmp    edx,0x5b
  402226:	0f be 10             	movsx  edx,BYTE PTR [eax]
  402229:	0f 94 c1             	sete   cl
  40222c:	85 d2                	test   edx,edx
  40222e:	75 d7                	jne    402207 <.text+0x27>
  402230:	89 d0                	mov    eax,edx
  402232:	5b                   	pop    ebx
  402233:	5e                   	pop    esi
  402234:	c3                   	ret    
  402235:	83 f9 01             	cmp    ecx,0x1
  402238:	7e 05                	jle    40223f <.text+0x5f>
  40223a:	83 fa 5d             	cmp    edx,0x5d
  40223d:	74 21                	je     402260 <.text+0x80>
  40223f:	83 fa 21             	cmp    edx,0x21
  402242:	0f 95 c2             	setne  dl
  402245:	0f b6 d2             	movzx  edx,dl
  402248:	01 d1                	add    ecx,edx
  40224a:	eb b4                	jmp    402200 <.text+0x20>
  40224c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402250:	80 78 01 00          	cmp    BYTE PTR [eax+0x1],0x0
  402254:	8d 70 02             	lea    esi,[eax+0x2]
  402257:	74 16                	je     40226f <.text+0x8f>
  402259:	89 f0                	mov    eax,esi
  40225b:	eb b6                	jmp    402213 <.text+0x33>
  40225d:	8d 76 00             	lea    esi,[esi+0x0]
  402260:	ba 01 00 00 00       	mov    edx,0x1
  402265:	89 d0                	mov    eax,edx
  402267:	5b                   	pop    ebx
  402268:	5e                   	pop    esi
  402269:	c3                   	ret    
  40226a:	31 d2                	xor    edx,edx
  40226c:	89 d0                	mov    eax,edx
  40226e:	c3                   	ret    
  40226f:	31 d2                	xor    edx,edx
  402271:	eb bd                	jmp    402230 <.text+0x50>
  402273:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  402279:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  402280:	85 c0                	test   eax,eax
  402282:	74 5c                	je     4022e0 <.text+0x100>
  402284:	56                   	push   esi
  402285:	53                   	push   ebx
  402286:	89 c6                	mov    esi,eax
  402288:	83 ec 14             	sub    esp,0x14
  40228b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  40228e:	8d 58 01             	lea    ebx,[eax+0x1]
  402291:	8d 04 9d 00 00 00 00 	lea    eax,[ebx*4+0x0]
  402298:	89 04 24             	mov    DWORD PTR [esp],eax
  40229b:	e8 08 19 00 00       	call   403ba8 <malloc>
  4022a0:	89 c1                	mov    ecx,eax
  4022a2:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  4022a5:	b8 03 00 00 00       	mov    eax,0x3
  4022aa:	85 c9                	test   ecx,ecx
  4022ac:	74 22                	je     4022d0 <.text+0xf0>
  4022ae:	85 db                	test   ebx,ebx
  4022b0:	89 da                	mov    edx,ebx
  4022b2:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
  4022b9:	7e 13                	jle    4022ce <.text+0xee>
  4022bb:	90                   	nop
  4022bc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4022c0:	83 ea 01             	sub    edx,0x1
  4022c3:	85 d2                	test   edx,edx
  4022c5:	c7 04 91 00 00 00 00 	mov    DWORD PTR [ecx+edx*4],0x0
  4022cc:	75 f2                	jne    4022c0 <.text+0xe0>
  4022ce:	31 c0                	xor    eax,eax
  4022d0:	83 c4 14             	add    esp,0x14
  4022d3:	5b                   	pop    ebx
  4022d4:	5e                   	pop    esi
  4022d5:	c3                   	ret    
  4022d6:	8d 76 00             	lea    esi,[esi+0x0]
  4022d9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4022e0:	31 c0                	xor    eax,eax
  4022e2:	c3                   	ret    
  4022e3:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  4022e9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4022f0:	55                   	push   ebp
  4022f1:	57                   	push   edi
  4022f2:	89 c7                	mov    edi,eax
  4022f4:	56                   	push   esi
  4022f5:	53                   	push   ebx
  4022f6:	83 ec 3c             	sub    esp,0x3c
  4022f9:	0f be 18             	movsx  ebx,BYTE PTR [eax]
  4022fc:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  402300:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  402304:	83 fb 5d             	cmp    ebx,0x5d
  402307:	89 dd                	mov    ebp,ebx
  402309:	0f 84 61 01 00 00    	je     402470 <.text+0x290>
  40230f:	83 fb 2d             	cmp    ebx,0x2d
  402312:	0f 84 58 01 00 00    	je     402470 <.text+0x290>
  402318:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  40231c:	89 c8                	mov    eax,ecx
  40231e:	f7 d0                	not    eax
  402320:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  402324:	b8 01 00 00 00       	mov    eax,0x1
  402329:	29 c8                	sub    eax,ecx
  40232b:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  40232f:	eb 0d                	jmp    40233e <.text+0x15e>
  402331:	89 ee                	mov    esi,ebp
  402333:	2b 74 24 1c          	sub    esi,DWORD PTR [esp+0x1c]
  402337:	85 f6                	test   esi,esi
  402339:	74 68                	je     4023a3 <.text+0x1c3>
  40233b:	0f be da             	movsx  ebx,dl
  40233e:	83 fb 5d             	cmp    ebx,0x5d
  402341:	8d 77 01             	lea    esi,[edi+0x1]
  402344:	0f 84 1a 01 00 00    	je     402464 <.text+0x284>
  40234a:	83 fb 2d             	cmp    ebx,0x2d
  40234d:	0f 84 8d 00 00 00    	je     4023e0 <.text+0x200>
  402353:	85 db                	test   ebx,ebx
  402355:	0f 84 09 01 00 00    	je     402464 <.text+0x284>
  40235b:	83 fb 2f             	cmp    ebx,0x2f
  40235e:	0f 84 00 01 00 00    	je     402464 <.text+0x284>
  402364:	83 fb 5c             	cmp    ebx,0x5c
  402367:	0f 84 f7 00 00 00    	je     402464 <.text+0x284>
  40236d:	0f b6 16             	movzx  edx,BYTE PTR [esi]
  402370:	89 dd                	mov    ebp,ebx
  402372:	89 f7                	mov    edi,esi
  402374:	f7 44 24 20 00 40 00 	test   DWORD PTR [esp+0x20],0x4000
  40237b:	00 
  40237c:	75 b3                	jne    402331 <.text+0x151>
  40237e:	89 2c 24             	mov    DWORD PTR [esp],ebp
  402381:	88 54 24 24          	mov    BYTE PTR [esp+0x24],dl
  402385:	e8 d6 17 00 00       	call   403b60 <tolower>
  40238a:	89 c6                	mov    esi,eax
  40238c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  402390:	89 04 24             	mov    DWORD PTR [esp],eax
  402393:	e8 c8 17 00 00       	call   403b60 <tolower>
  402398:	29 c6                	sub    esi,eax
  40239a:	0f b6 54 24 24       	movzx  edx,BYTE PTR [esp+0x24]
  40239f:	85 f6                	test   esi,esi
  4023a1:	75 98                	jne    40233b <.text+0x15b>
  4023a3:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  4023a7:	83 e0 20             	and    eax,0x20
  4023aa:	eb 12                	jmp    4023be <.text+0x1de>
  4023ac:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4023b0:	83 c7 01             	add    edi,0x1
  4023b3:	84 d2                	test   dl,dl
  4023b5:	0f 84 a9 00 00 00    	je     402464 <.text+0x284>
  4023bb:	0f b6 17             	movzx  edx,BYTE PTR [edi]
  4023be:	80 fa 5d             	cmp    dl,0x5d
  4023c1:	0f 84 3e 01 00 00    	je     402505 <.text+0x325>
  4023c7:	80 fa 7f             	cmp    dl,0x7f
  4023ca:	75 e4                	jne    4023b0 <.text+0x1d0>
  4023cc:	85 c0                	test   eax,eax
  4023ce:	0f 85 3c 01 00 00    	jne    402510 <.text+0x330>
  4023d4:	0f b6 57 01          	movzx  edx,BYTE PTR [edi+0x1]
  4023d8:	83 c7 01             	add    edi,0x1
  4023db:	eb d3                	jmp    4023b0 <.text+0x1d0>
  4023dd:	8d 76 00             	lea    esi,[esi+0x0]
  4023e0:	0f b6 57 01          	movzx  edx,BYTE PTR [edi+0x1]
  4023e4:	80 fa 5d             	cmp    dl,0x5d
  4023e7:	0f 84 95 00 00 00    	je     402482 <.text+0x2a2>
  4023ed:	0f be da             	movsx  ebx,dl
  4023f0:	85 db                	test   ebx,ebx
  4023f2:	74 70                	je     402464 <.text+0x284>
  4023f4:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  4023f8:	8d 77 02             	lea    esi,[edi+0x2]
  4023fb:	81 e1 00 40 00 00    	and    ecx,0x4000
  402401:	39 dd                	cmp    ebp,ebx
  402403:	0f 8d 0f 01 00 00    	jge    402518 <.text+0x338>
  402409:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  40240d:	89 e8                	mov    eax,ebp
  40240f:	89 ce                	mov    esi,ecx
  402411:	eb 11                	jmp    402424 <.text+0x244>
  402413:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  402417:	8d 3c 28             	lea    edi,[eax+ebp*1]
  40241a:	85 ff                	test   edi,edi
  40241c:	74 29                	je     402447 <.text+0x267>
  40241e:	39 eb                	cmp    ebx,ebp
  402420:	89 e8                	mov    eax,ebp
  402422:	74 6c                	je     402490 <.text+0x2b0>
  402424:	85 f6                	test   esi,esi
  402426:	8d 68 01             	lea    ebp,[eax+0x1]
  402429:	75 e8                	jne    402413 <.text+0x233>
  40242b:	89 04 24             	mov    DWORD PTR [esp],eax
  40242e:	e8 2d 17 00 00       	call   403b60 <tolower>
  402433:	89 c7                	mov    edi,eax
  402435:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  402439:	89 04 24             	mov    DWORD PTR [esp],eax
  40243c:	e8 1f 17 00 00       	call   403b60 <tolower>
  402441:	29 c7                	sub    edi,eax
  402443:	85 ff                	test   edi,edi
  402445:	75 d7                	jne    40241e <.text+0x23e>
  402447:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  40244b:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  40244f:	83 e2 20             	and    edx,0x20
  402452:	0f b6 06             	movzx  eax,BYTE PTR [esi]
  402455:	3c 5d                	cmp    al,0x5d
  402457:	74 61                	je     4024ba <.text+0x2da>
  402459:	3c 7f                	cmp    al,0x7f
  40245b:	74 43                	je     4024a0 <.text+0x2c0>
  40245d:	83 c6 01             	add    esi,0x1
  402460:	84 c0                	test   al,al
  402462:	75 ee                	jne    402452 <.text+0x272>
  402464:	83 c4 3c             	add    esp,0x3c
  402467:	31 c0                	xor    eax,eax
  402469:	5b                   	pop    ebx
  40246a:	5e                   	pop    esi
  40246b:	5f                   	pop    edi
  40246c:	5d                   	pop    ebp
  40246d:	c3                   	ret    
  40246e:	66 90                	xchg   ax,ax
  402470:	3b 5c 24 1c          	cmp    ebx,DWORD PTR [esp+0x1c]
  402474:	74 4f                	je     4024c5 <.text+0x2e5>
  402476:	0f be 5f 01          	movsx  ebx,BYTE PTR [edi+0x1]
  40247a:	83 c7 01             	add    edi,0x1
  40247d:	e9 96 fe ff ff       	jmp    402318 <.text+0x138>
  402482:	bd 2d 00 00 00       	mov    ebp,0x2d
  402487:	89 f7                	mov    edi,esi
  402489:	e9 e6 fe ff ff       	jmp    402374 <.text+0x194>
  40248e:	66 90                	xchg   ax,ax
  402490:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  402494:	e9 c2 fe ff ff       	jmp    40235b <.text+0x17b>
  402499:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  4024a0:	85 d2                	test   edx,edx
  4024a2:	75 0c                	jne    4024b0 <.text+0x2d0>
  4024a4:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
  4024a8:	83 c6 01             	add    esi,0x1
  4024ab:	eb b0                	jmp    40245d <.text+0x27d>
  4024ad:	8d 76 00             	lea    esi,[esi+0x0]
  4024b0:	83 c6 01             	add    esi,0x1
  4024b3:	0f b6 06             	movzx  eax,BYTE PTR [esi]
  4024b6:	3c 5d                	cmp    al,0x5d
  4024b8:	75 9f                	jne    402459 <.text+0x279>
  4024ba:	83 c4 3c             	add    esp,0x3c
  4024bd:	8d 46 01             	lea    eax,[esi+0x1]
  4024c0:	5b                   	pop    ebx
  4024c1:	5e                   	pop    esi
  4024c2:	5f                   	pop    edi
  4024c3:	5d                   	pop    ebp
  4024c4:	c3                   	ret    
  4024c5:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  4024c9:	83 c7 01             	add    edi,0x1
  4024cc:	83 e2 20             	and    edx,0x20
  4024cf:	90                   	nop
  4024d0:	0f b6 07             	movzx  eax,BYTE PTR [edi]
  4024d3:	3c 5d                	cmp    al,0x5d
  4024d5:	74 2e                	je     402505 <.text+0x325>
  4024d7:	3c 7f                	cmp    al,0x7f
  4024d9:	74 15                	je     4024f0 <.text+0x310>
  4024db:	83 c7 01             	add    edi,0x1
  4024de:	84 c0                	test   al,al
  4024e0:	75 ee                	jne    4024d0 <.text+0x2f0>
  4024e2:	e9 7d ff ff ff       	jmp    402464 <.text+0x284>
  4024e7:	89 f6                	mov    esi,esi
  4024e9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4024f0:	85 d2                	test   edx,edx
  4024f2:	75 0c                	jne    402500 <.text+0x320>
  4024f4:	0f b6 47 01          	movzx  eax,BYTE PTR [edi+0x1]
  4024f8:	83 c7 01             	add    edi,0x1
  4024fb:	eb de                	jmp    4024db <.text+0x2fb>
  4024fd:	8d 76 00             	lea    esi,[esi+0x0]
  402500:	83 c7 01             	add    edi,0x1
  402503:	eb cb                	jmp    4024d0 <.text+0x2f0>
  402505:	83 c4 3c             	add    esp,0x3c
  402508:	8d 47 01             	lea    eax,[edi+0x1]
  40250b:	5b                   	pop    ebx
  40250c:	5e                   	pop    esi
  40250d:	5f                   	pop    edi
  40250e:	5d                   	pop    ebp
  40250f:	c3                   	ret    
  402510:	83 c7 01             	add    edi,0x1
  402513:	e9 a3 fe ff ff       	jmp    4023bb <.text+0x1db>
  402518:	0f 8e 3d fe ff ff    	jle    40235b <.text+0x17b>
  40251e:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  402522:	89 ce                	mov    esi,ecx
  402524:	eb 1f                	jmp    402545 <.text+0x365>
  402526:	8d 76 00             	lea    esi,[esi+0x0]
  402529:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  402530:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  402534:	8d 2c 38             	lea    ebp,[eax+edi*1]
  402537:	85 ed                	test   ebp,ebp
  402539:	74 2d                	je     402568 <.text+0x388>
  40253b:	39 fb                	cmp    ebx,edi
  40253d:	89 fd                	mov    ebp,edi
  40253f:	0f 84 4b ff ff ff    	je     402490 <.text+0x2b0>
  402545:	85 f6                	test   esi,esi
  402547:	8d 7d ff             	lea    edi,[ebp-0x1]
  40254a:	75 e4                	jne    402530 <.text+0x350>
  40254c:	89 2c 24             	mov    DWORD PTR [esp],ebp
  40254f:	e8 0c 16 00 00       	call   403b60 <tolower>
  402554:	89 c5                	mov    ebp,eax
  402556:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  40255a:	89 04 24             	mov    DWORD PTR [esp],eax
  40255d:	e8 fe 15 00 00       	call   403b60 <tolower>
  402562:	29 c5                	sub    ebp,eax
  402564:	85 ed                	test   ebp,ebp
  402566:	75 d3                	jne    40253b <.text+0x35b>
  402568:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  40256c:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  402570:	83 e2 20             	and    edx,0x20
  402573:	0f b6 06             	movzx  eax,BYTE PTR [esi]
  402576:	3c 5d                	cmp    al,0x5d
  402578:	0f 84 3c ff ff ff    	je     4024ba <.text+0x2da>
  40257e:	3c 7f                	cmp    al,0x7f
  402580:	74 0e                	je     402590 <.text+0x3b0>
  402582:	83 c6 01             	add    esi,0x1
  402585:	84 c0                	test   al,al
  402587:	75 ea                	jne    402573 <.text+0x393>
  402589:	e9 d6 fe ff ff       	jmp    402464 <.text+0x284>
  40258e:	66 90                	xchg   ax,ax
  402590:	85 d2                	test   edx,edx
  402592:	75 0c                	jne    4025a0 <.text+0x3c0>
  402594:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
  402598:	83 c6 01             	add    esi,0x1
  40259b:	eb e5                	jmp    402582 <.text+0x3a2>
  40259d:	8d 76 00             	lea    esi,[esi+0x0]
  4025a0:	83 c6 01             	add    esi,0x1
  4025a3:	eb ce                	jmp    402573 <.text+0x393>
  4025a5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4025a9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4025b0:	55                   	push   ebp
  4025b1:	57                   	push   edi
  4025b2:	89 c5                	mov    ebp,eax
  4025b4:	56                   	push   esi
  4025b5:	53                   	push   ebx
  4025b6:	83 ec 2c             	sub    esp,0x2c
  4025b9:	80 3a 2e             	cmp    BYTE PTR [edx],0x2e
  4025bc:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  4025c0:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
  4025c3:	0f 84 37 01 00 00    	je     402700 <.text+0x520>
  4025c9:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  4025cd:	8d 7a 01             	lea    edi,[edx+0x1]
  4025d0:	c1 e8 05             	shr    eax,0x5
  4025d3:	83 f0 01             	xor    eax,0x1
  4025d6:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  4025da:	0f be d1             	movsx  edx,cl
  4025dd:	8d 77 ff             	lea    esi,[edi-0x1]
  4025e0:	8d 45 01             	lea    eax,[ebp+0x1]
  4025e3:	85 d2                	test   edx,edx
  4025e5:	0f 84 69 01 00 00    	je     402754 <.text+0x574>
  4025eb:	80 f9 3f             	cmp    cl,0x3f
  4025ee:	0f 84 ed 00 00 00    	je     4026e1 <.text+0x501>
  4025f4:	80 f9 5b             	cmp    cl,0x5b
  4025f7:	0f 84 b3 00 00 00    	je     4026b0 <.text+0x4d0>
  4025fd:	80 f9 2a             	cmp    cl,0x2a
  402600:	74 5e                	je     402660 <.text+0x480>
  402602:	f6 44 24 18 01       	test   BYTE PTR [esp+0x18],0x1
  402607:	74 09                	je     402612 <.text+0x432>
  402609:	83 fa 7f             	cmp    edx,0x7f
  40260c:	0f 84 2e 01 00 00    	je     402740 <.text+0x560>
  402612:	89 c5                	mov    ebp,eax
  402614:	0f be 5f ff          	movsx  ebx,BYTE PTR [edi-0x1]
  402618:	84 db                	test   bl,bl
  40261a:	0f 84 86 01 00 00    	je     4027a6 <.text+0x5c6>
  402620:	f7 44 24 14 00 40 00 	test   DWORD PTR [esp+0x14],0x4000
  402627:	00 
  402628:	0f 85 c2 00 00 00    	jne    4026f0 <.text+0x510>
  40262e:	89 14 24             	mov    DWORD PTR [esp],edx
  402631:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  402635:	e8 26 15 00 00       	call   403b60 <tolower>
  40263a:	89 1c 24             	mov    DWORD PTR [esp],ebx
  40263d:	89 c6                	mov    esi,eax
  40263f:	e8 1c 15 00 00       	call   403b60 <tolower>
  402644:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  402648:	29 c6                	sub    esi,eax
  40264a:	85 f6                	test   esi,esi
  40264c:	0f 84 83 00 00 00    	je     4026d5 <.text+0x4f5>
  402652:	89 d0                	mov    eax,edx
  402654:	29 d8                	sub    eax,ebx
  402656:	83 c4 2c             	add    esp,0x2c
  402659:	5b                   	pop    ebx
  40265a:	5e                   	pop    esi
  40265b:	5f                   	pop    edi
  40265c:	5d                   	pop    ebp
  40265d:	c3                   	ret    
  40265e:	66 90                	xchg   ax,ax
  402660:	0f b6 55 01          	movzx  edx,BYTE PTR [ebp+0x1]
  402664:	89 c3                	mov    ebx,eax
  402666:	80 fa 2a             	cmp    dl,0x2a
  402669:	75 10                	jne    40267b <.text+0x49b>
  40266b:	90                   	nop
  40266c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402670:	83 c3 01             	add    ebx,0x1
  402673:	0f b6 13             	movzx  edx,BYTE PTR [ebx]
  402676:	80 fa 2a             	cmp    dl,0x2a
  402679:	74 f5                	je     402670 <.text+0x490>
  40267b:	31 c0                	xor    eax,eax
  40267d:	84 d2                	test   dl,dl
  40267f:	74 d5                	je     402656 <.text+0x476>
  402681:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  402685:	81 cf 00 00 01 00    	or     edi,0x10000
  40268b:	eb 0c                	jmp    402699 <.text+0x4b9>
  40268d:	8d 76 00             	lea    esi,[esi+0x0]
  402690:	83 c6 01             	add    esi,0x1
  402693:	80 7e ff 00          	cmp    BYTE PTR [esi-0x1],0x0
  402697:	74 bd                	je     402656 <.text+0x476>
  402699:	89 f9                	mov    ecx,edi
  40269b:	89 f2                	mov    edx,esi
  40269d:	89 d8                	mov    eax,ebx
  40269f:	e8 0c ff ff ff       	call   4025b0 <.text+0x3d0>
  4026a4:	85 c0                	test   eax,eax
  4026a6:	75 e8                	jne    402690 <.text+0x4b0>
  4026a8:	83 c4 2c             	add    esp,0x2c
  4026ab:	5b                   	pop    ebx
  4026ac:	5e                   	pop    esi
  4026ad:	5f                   	pop    edi
  4026ae:	5d                   	pop    ebp
  4026af:	c3                   	ret    
  4026b0:	0f be 57 ff          	movsx  edx,BYTE PTR [edi-0x1]
  4026b4:	85 d2                	test   edx,edx
  4026b6:	0f 84 fb 00 00 00    	je     4027b7 <.text+0x5d7>
  4026bc:	80 7d 01 21          	cmp    BYTE PTR [ebp+0x1],0x21
  4026c0:	74 60                	je     402722 <.text+0x542>
  4026c2:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  4026c6:	e8 25 fc ff ff       	call   4022f0 <.text+0x110>
  4026cb:	89 c5                	mov    ebp,eax
  4026cd:	85 ed                	test   ebp,ebp
  4026cf:	0f 84 c7 00 00 00    	je     40279c <.text+0x5bc>
  4026d5:	0f b6 4d 00          	movzx  ecx,BYTE PTR [ebp+0x0]
  4026d9:	83 c7 01             	add    edi,0x1
  4026dc:	e9 f9 fe ff ff       	jmp    4025da <.text+0x3fa>
  4026e1:	80 7f ff 00          	cmp    BYTE PTR [edi-0x1],0x0
  4026e5:	0f 84 c2 00 00 00    	je     4027ad <.text+0x5cd>
  4026eb:	89 c5                	mov    ebp,eax
  4026ed:	eb e6                	jmp    4026d5 <.text+0x4f5>
  4026ef:	90                   	nop
  4026f0:	89 d6                	mov    esi,edx
  4026f2:	29 de                	sub    esi,ebx
  4026f4:	e9 51 ff ff ff       	jmp    40264a <.text+0x46a>
  4026f9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  402700:	80 f9 2e             	cmp    cl,0x2e
  402703:	0f 84 c0 fe ff ff    	je     4025c9 <.text+0x3e9>
  402709:	0f be c1             	movsx  eax,cl
  40270c:	83 e8 2e             	sub    eax,0x2e
  40270f:	f7 44 24 14 00 00 01 	test   DWORD PTR [esp+0x14],0x10000
  402716:	00 
  402717:	0f 85 ac fe ff ff    	jne    4025c9 <.text+0x3e9>
  40271d:	e9 34 ff ff ff       	jmp    402656 <.text+0x476>
  402722:	8d 5d 02             	lea    ebx,[ebp+0x2]
  402725:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  402729:	89 d8                	mov    eax,ebx
  40272b:	e8 c0 fb ff ff       	call   4022f0 <.text+0x110>
  402730:	85 c0                	test   eax,eax
  402732:	74 2a                	je     40275e <.text+0x57e>
  402734:	89 dd                	mov    ebp,ebx
  402736:	eb 95                	jmp    4026cd <.text+0x4ed>
  402738:	90                   	nop
  402739:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  402740:	0f be 55 01          	movsx  edx,BYTE PTR [ebp+0x1]
  402744:	83 c5 02             	add    ebp,0x2
  402747:	85 d2                	test   edx,edx
  402749:	0f 85 c5 fe ff ff    	jne    402614 <.text+0x434>
  40274f:	e9 be fe ff ff       	jmp    402612 <.text+0x432>
  402754:	0f be 06             	movsx  eax,BYTE PTR [esi]
  402757:	f7 d8                	neg    eax
  402759:	e9 f8 fe ff ff       	jmp    402656 <.text+0x476>
  40275e:	0f b6 45 02          	movzx  eax,BYTE PTR [ebp+0x2]
  402762:	3c 5d                	cmp    al,0x5d
  402764:	74 5b                	je     4027c1 <.text+0x5e1>
  402766:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  40276a:	83 e2 20             	and    edx,0x20
  40276d:	eb 0b                	jmp    40277a <.text+0x59a>
  40276f:	90                   	nop
  402770:	83 c3 01             	add    ebx,0x1
  402773:	84 c0                	test   al,al
  402775:	74 25                	je     40279c <.text+0x5bc>
  402777:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
  40277a:	3c 5d                	cmp    al,0x5d
  40277c:	74 16                	je     402794 <.text+0x5b4>
  40277e:	3c 7f                	cmp    al,0x7f
  402780:	75 ee                	jne    402770 <.text+0x590>
  402782:	85 d2                	test   edx,edx
  402784:	75 09                	jne    40278f <.text+0x5af>
  402786:	0f b6 43 01          	movzx  eax,BYTE PTR [ebx+0x1]
  40278a:	83 c3 01             	add    ebx,0x1
  40278d:	eb e1                	jmp    402770 <.text+0x590>
  40278f:	83 c3 01             	add    ebx,0x1
  402792:	eb e3                	jmp    402777 <.text+0x597>
  402794:	8d 6b 01             	lea    ebp,[ebx+0x1]
  402797:	e9 31 ff ff ff       	jmp    4026cd <.text+0x4ed>
  40279c:	b8 5d 00 00 00       	mov    eax,0x5d
  4027a1:	e9 b0 fe ff ff       	jmp    402656 <.text+0x476>
  4027a6:	31 db                	xor    ebx,ebx
  4027a8:	e9 a5 fe ff ff       	jmp    402652 <.text+0x472>
  4027ad:	b8 3f 00 00 00       	mov    eax,0x3f
  4027b2:	e9 9f fe ff ff       	jmp    402656 <.text+0x476>
  4027b7:	b8 5b 00 00 00       	mov    eax,0x5b
  4027bc:	e9 95 fe ff ff       	jmp    402656 <.text+0x476>
  4027c1:	8d 5d 03             	lea    ebx,[ebp+0x3]
  4027c4:	0f b6 45 03          	movzx  eax,BYTE PTR [ebp+0x3]
  4027c8:	eb 9c                	jmp    402766 <.text+0x586>
  4027ca:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  4027d0:	57                   	push   edi
  4027d1:	56                   	push   esi
  4027d2:	89 c6                	mov    esi,eax
  4027d4:	53                   	push   ebx
  4027d5:	89 d3                	mov    ebx,edx
  4027d7:	83 ec 10             	sub    esp,0x10
  4027da:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  4027dd:	03 42 04             	add    eax,DWORD PTR [edx+0x4]
  4027e0:	8d 04 85 08 00 00 00 	lea    eax,[eax*4+0x8]
  4027e7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4027eb:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  4027ee:	89 04 24             	mov    DWORD PTR [esp],eax
  4027f1:	e8 92 13 00 00       	call   403b88 <realloc>
  4027f6:	85 c0                	test   eax,eax
  4027f8:	74 26                	je     402820 <.text+0x640>
  4027fa:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  4027fd:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
  402800:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  402803:	8d 79 01             	lea    edi,[ecx+0x1]
  402806:	01 d1                	add    ecx,edx
  402808:	01 fa                	add    edx,edi
  40280a:	89 7b 04             	mov    DWORD PTR [ebx+0x4],edi
  40280d:	89 34 88             	mov    DWORD PTR [eax+ecx*4],esi
  402810:	c7 04 90 00 00 00 00 	mov    DWORD PTR [eax+edx*4],0x0
  402817:	83 c4 10             	add    esp,0x10
  40281a:	31 c0                	xor    eax,eax
  40281c:	5b                   	pop    ebx
  40281d:	5e                   	pop    esi
  40281e:	5f                   	pop    edi
  40281f:	c3                   	ret    
  402820:	83 c4 10             	add    esp,0x10
  402823:	b8 01 00 00 00       	mov    eax,0x1
  402828:	5b                   	pop    ebx
  402829:	5e                   	pop    esi
  40282a:	5f                   	pop    edi
  40282b:	c3                   	ret    
  40282c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402830:	56                   	push   esi
  402831:	53                   	push   ebx
  402832:	89 c3                	mov    ebx,eax
  402834:	89 d6                	mov    esi,edx
  402836:	83 ec 14             	sub    esp,0x14
  402839:	8b 00                	mov    eax,DWORD PTR [eax]
  40283b:	85 c0                	test   eax,eax
  40283d:	74 05                	je     402844 <.text+0x664>
  40283f:	e8 ec ff ff ff       	call   402830 <.text+0x650>
  402844:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  402847:	85 c0                	test   eax,eax
  402849:	74 04                	je     40284f <.text+0x66f>
  40284b:	85 f6                	test   esi,esi
  40284d:	75 21                	jne    402870 <.text+0x690>
  40284f:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  402852:	85 c0                	test   eax,eax
  402854:	74 07                	je     40285d <.text+0x67d>
  402856:	89 f2                	mov    edx,esi
  402858:	e8 d3 ff ff ff       	call   402830 <.text+0x650>
  40285d:	89 1c 24             	mov    DWORD PTR [esp],ebx
  402860:	e8 53 13 00 00       	call   403bb8 <free>
  402865:	83 c4 14             	add    esp,0x14
  402868:	5b                   	pop    ebx
  402869:	5e                   	pop    esi
  40286a:	c3                   	ret    
  40286b:	90                   	nop
  40286c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402870:	89 f2                	mov    edx,esi
  402872:	e8 59 ff ff ff       	call   4027d0 <.text+0x5f0>
  402877:	eb d6                	jmp    40284f <.text+0x66f>
  402879:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  402880:	55                   	push   ebp
  402881:	89 e5                	mov    ebp,esp
  402883:	57                   	push   edi
  402884:	56                   	push   esi
  402885:	53                   	push   ebx
  402886:	89 c3                	mov    ebx,eax
  402888:	83 ec 6c             	sub    esp,0x6c
  40288b:	89 55 d0             	mov    DWORD PTR [ebp-0x30],edx
  40288e:	80 e6 04             	and    dh,0x4
  402891:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
  402894:	0f 85 56 03 00 00    	jne    402bf0 <.text+0xa10>
  40289a:	89 65 a8             	mov    DWORD PTR [ebp-0x58],esp
  40289d:	89 1c 24             	mov    DWORD PTR [esp],ebx
  4028a0:	e8 c3 12 00 00       	call   403b68 <strlen>
  4028a5:	8d 50 01             	lea    edx,[eax+0x1]
  4028a8:	83 c0 10             	add    eax,0x10
  4028ab:	c1 e8 04             	shr    eax,0x4
  4028ae:	c1 e0 04             	shl    eax,0x4
  4028b1:	e8 8a f8 ff ff       	call   402140 <__chkstk_ms>
  4028b6:	29 c4                	sub    esp,eax
  4028b8:	8d 44 24 0c          	lea    eax,[esp+0xc]
  4028bc:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  4028c0:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
  4028c4:	89 04 24             	mov    DWORD PTR [esp],eax
  4028c7:	e8 cc 12 00 00       	call   403b98 <memcpy>
  4028cc:	89 04 24             	mov    DWORD PTR [esp],eax
  4028cf:	e8 8c 09 00 00       	call   403260 <__mingw_dirname>
  4028d4:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
  4028d7:	89 c6                	mov    esi,eax
  4028d9:	8d 45 d8             	lea    eax,[ebp-0x28]
  4028dc:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
  4028e3:	e8 98 f9 ff ff       	call   402280 <.text+0xa0>
  4028e8:	85 c0                	test   eax,eax
  4028ea:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  4028ed:	0f 85 ed 02 00 00    	jne    402be0 <.text+0xa00>
  4028f3:	8b 7d d0             	mov    edi,DWORD PTR [ebp-0x30]
  4028f6:	89 f0                	mov    eax,esi
  4028f8:	89 fa                	mov    edx,edi
  4028fa:	e8 e1 f8 ff ff       	call   4021e0 <.text>
  4028ff:	85 c0                	test   eax,eax
  402901:	0f 84 d7 04 00 00    	je     402dde <.text+0xbfe>
  402907:	8d 45 d8             	lea    eax,[ebp-0x28]
  40290a:	89 fa                	mov    edx,edi
  40290c:	80 ce 80             	or     dh,0x80
  40290f:	89 04 24             	mov    DWORD PTR [esp],eax
  402912:	8b 4d c4             	mov    ecx,DWORD PTR [ebp-0x3c]
  402915:	89 f0                	mov    eax,esi
  402917:	e8 64 ff ff ff       	call   402880 <.text+0x6a0>
  40291c:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  40291f:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
  402922:	85 c9                	test   ecx,ecx
  402924:	0f 85 b6 02 00 00    	jne    402be0 <.text+0xa00>
  40292a:	0f b6 43 01          	movzx  eax,BYTE PTR [ebx+0x1]
  40292e:	3c 2f                	cmp    al,0x2f
  402930:	74 19                	je     40294b <.text+0x76b>
  402932:	3c 5c                	cmp    al,0x5c
  402934:	74 15                	je     40294b <.text+0x76b>
  402936:	8b 75 d4             	mov    esi,DWORD PTR [ebp-0x2c]
  402939:	bf 30 52 40 00       	mov    edi,0x405230
  40293e:	b9 02 00 00 00       	mov    ecx,0x2
  402943:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
  402945:	0f 84 0b 05 00 00    	je     402e56 <.text+0xc76>
  40294b:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  40294e:	89 04 24             	mov    DWORD PTR [esp],eax
  402951:	e8 12 12 00 00       	call   403b68 <strlen>
  402956:	01 d8                	add    eax,ebx
  402958:	39 c3                	cmp    ebx,eax
  40295a:	0f 83 66 07 00 00    	jae    4030c6 <.text+0xee6>
  402960:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
  402963:	80 f9 2f             	cmp    cl,0x2f
  402966:	88 4d a3             	mov    BYTE PTR [ebp-0x5d],cl
  402969:	0f 84 4f 07 00 00    	je     4030be <.text+0xede>
  40296f:	80 f9 5c             	cmp    cl,0x5c
  402972:	75 24                	jne    402998 <.text+0x7b8>
  402974:	e9 45 07 00 00       	jmp    4030be <.text+0xede>
  402979:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  402980:	0f b6 48 ff          	movzx  ecx,BYTE PTR [eax-0x1]
  402984:	89 d0                	mov    eax,edx
  402986:	80 f9 2f             	cmp    cl,0x2f
  402989:	0f 84 6b 06 00 00    	je     402ffa <.text+0xe1a>
  40298f:	80 f9 5c             	cmp    cl,0x5c
  402992:	0f 84 62 06 00 00    	je     402ffa <.text+0xe1a>
  402998:	8d 50 ff             	lea    edx,[eax-0x1]
  40299b:	39 d3                	cmp    ebx,edx
  40299d:	75 e1                	jne    402980 <.text+0x7a0>
  40299f:	0f b6 40 ff          	movzx  eax,BYTE PTR [eax-0x1]
  4029a3:	89 55 c8             	mov    DWORD PTR [ebp-0x38],edx
  4029a6:	88 45 a3             	mov    BYTE PTR [ebp-0x5d],al
  4029a9:	0f b6 45 a3          	movzx  eax,BYTE PTR [ebp-0x5d]
  4029ad:	3c 2f                	cmp    al,0x2f
  4029af:	74 08                	je     4029b9 <.text+0x7d9>
  4029b1:	3c 5c                	cmp    al,0x5c
  4029b3:	0f 85 72 06 00 00    	jne    40302b <.text+0xe4b>
  4029b9:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
  4029bc:	0f b6 75 a3          	movzx  esi,BYTE PTR [ebp-0x5d]
  4029c0:	eb 02                	jmp    4029c4 <.text+0x7e4>
  4029c2:	89 c6                	mov    esi,eax
  4029c4:	83 c2 01             	add    edx,0x1
  4029c7:	0f b6 02             	movzx  eax,BYTE PTR [edx]
  4029ca:	3c 2f                	cmp    al,0x2f
  4029cc:	0f 94 c3             	sete   bl
  4029cf:	3c 5c                	cmp    al,0x5c
  4029d1:	0f 94 c1             	sete   cl
  4029d4:	08 cb                	or     bl,cl
  4029d6:	75 ea                	jne    4029c2 <.text+0x7e2>
  4029d8:	89 f0                	mov    eax,esi
  4029da:	89 55 c8             	mov    DWORD PTR [ebp-0x38],edx
  4029dd:	88 45 a3             	mov    BYTE PTR [ebp-0x5d],al
  4029e0:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  4029e3:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
  4029e6:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  4029e9:	8b 7d d0             	mov    edi,DWORD PTR [ebp-0x30]
  4029ec:	c7 45 cc 02 00 00 00 	mov    DWORD PTR [ebp-0x34],0x2
  4029f3:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
  4029f6:	8b 00                	mov    eax,DWORD PTR [eax]
  4029f8:	81 e7 00 80 00 00    	and    edi,0x8000
  4029fe:	89 7d d4             	mov    DWORD PTR [ebp-0x2c],edi
  402a01:	85 c0                	test   eax,eax
  402a03:	0f 84 11 05 00 00    	je     402f1a <.text+0xd3a>
  402a09:	89 04 24             	mov    DWORD PTR [esp],eax
  402a0c:	e8 cf 0d 00 00       	call   4037e0 <__mingw_opendir>
  402a11:	85 c0                	test   eax,eax
  402a13:	89 c7                	mov    edi,eax
  402a15:	0f 84 b8 04 00 00    	je     402ed3 <.text+0xcf3>
  402a1b:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
  402a1e:	85 c0                	test   eax,eax
  402a20:	0f 84 74 05 00 00    	je     402f9a <.text+0xdba>
  402a26:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
  402a29:	8b 00                	mov    eax,DWORD PTR [eax]
  402a2b:	89 04 24             	mov    DWORD PTR [esp],eax
  402a2e:	e8 35 11 00 00       	call   403b68 <strlen>
  402a33:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
  402a36:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  402a39:	c7 45 b8 00 00 00 00 	mov    DWORD PTR [ebp-0x48],0x0
  402a40:	83 c0 02             	add    eax,0x2
  402a43:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
  402a46:	8d 76 00             	lea    esi,[esi+0x0]
  402a49:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  402a50:	89 3c 24             	mov    DWORD PTR [esp],edi
  402a53:	e8 48 0f 00 00       	call   4039a0 <__mingw_readdir>
  402a58:	85 c0                	test   eax,eax
  402a5a:	89 c6                	mov    esi,eax
  402a5c:	0f 84 11 04 00 00    	je     402e73 <.text+0xc93>
  402a62:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  402a65:	85 c0                	test   eax,eax
  402a67:	74 06                	je     402a6f <.text+0x88f>
  402a69:	83 7e 08 10          	cmp    DWORD PTR [esi+0x8],0x10
  402a6d:	75 e1                	jne    402a50 <.text+0x870>
  402a6f:	8d 5e 0c             	lea    ebx,[esi+0xc]
  402a72:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  402a75:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  402a78:	89 da                	mov    edx,ebx
  402a7a:	e8 31 fb ff ff       	call   4025b0 <.text+0x3d0>
  402a7f:	85 c0                	test   eax,eax
  402a81:	75 cd                	jne    402a50 <.text+0x870>
  402a83:	0f b7 56 06          	movzx  edx,WORD PTR [esi+0x6]
  402a87:	8b 45 ac             	mov    eax,DWORD PTR [ebp-0x54]
  402a8a:	89 65 b0             	mov    DWORD PTR [ebp-0x50],esp
  402a8d:	8d 44 02 0f          	lea    eax,[edx+eax*1+0xf]
  402a91:	c1 e8 04             	shr    eax,0x4
  402a94:	c1 e0 04             	shl    eax,0x4
  402a97:	e8 a4 f6 ff ff       	call   402140 <__chkstk_ms>
  402a9c:	29 c4                	sub    esp,eax
  402a9e:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  402aa1:	c7 45 b4 00 00 00 00 	mov    DWORD PTR [ebp-0x4c],0x0
  402aa8:	8d 74 24 0c          	lea    esi,[esp+0xc]
  402aac:	85 c0                	test   eax,eax
  402aae:	0f 85 7c 04 00 00    	jne    402f30 <.text+0xd50>
  402ab4:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
  402ab7:	83 c2 01             	add    edx,0x1
  402aba:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
  402abe:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  402ac2:	89 e3                	mov    ebx,esp
  402ac4:	01 f0                	add    eax,esi
  402ac6:	89 04 24             	mov    DWORD PTR [esp],eax
  402ac9:	e8 ca 10 00 00       	call   403b98 <memcpy>
  402ace:	89 34 24             	mov    DWORD PTR [esp],esi
  402ad1:	e8 92 10 00 00       	call   403b68 <strlen>
  402ad6:	83 c0 10             	add    eax,0x10
  402ad9:	c1 e8 04             	shr    eax,0x4
  402adc:	c1 e0 04             	shl    eax,0x4
  402adf:	e8 5c f6 ff ff       	call   402140 <__chkstk_ms>
  402ae4:	29 c4                	sub    esp,eax
  402ae6:	89 f0                	mov    eax,esi
  402ae8:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  402aec:	89 ce                	mov    esi,ecx
  402aee:	eb 0d                	jmp    402afd <.text+0x91d>
  402af0:	83 c6 01             	add    esi,0x1
  402af3:	83 c0 01             	add    eax,0x1
  402af6:	84 d2                	test   dl,dl
  402af8:	88 56 ff             	mov    BYTE PTR [esi-0x1],dl
  402afb:	74 1c                	je     402b19 <.text+0x939>
  402afd:	0f b6 10             	movzx  edx,BYTE PTR [eax]
  402b00:	80 fa 7f             	cmp    dl,0x7f
  402b03:	75 eb                	jne    402af0 <.text+0x910>
  402b05:	0f b6 50 01          	movzx  edx,BYTE PTR [eax+0x1]
  402b09:	83 c0 01             	add    eax,0x1
  402b0c:	83 c6 01             	add    esi,0x1
  402b0f:	83 c0 01             	add    eax,0x1
  402b12:	84 d2                	test   dl,dl
  402b14:	88 56 ff             	mov    BYTE PTR [esi-0x1],dl
  402b17:	75 e4                	jne    402afd <.text+0x91d>
  402b19:	89 0c 24             	mov    DWORD PTR [esp],ecx
  402b1c:	e8 87 11 00 00       	call   403ca8 <strdup>
  402b21:	85 c0                	test   eax,eax
  402b23:	89 c6                	mov    esi,eax
  402b25:	89 dc                	mov    esp,ebx
  402b27:	0f 84 47 04 00 00    	je     402f74 <.text+0xd94>
  402b2d:	8b 5d cc             	mov    ebx,DWORD PTR [ebp-0x34]
  402b30:	83 fb 02             	cmp    ebx,0x2
  402b33:	0f 94 c0             	sete   al
  402b36:	0f b6 c0             	movzx  eax,al
  402b39:	83 e8 01             	sub    eax,0x1
  402b3c:	21 c3                	and    ebx,eax
  402b3e:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  402b41:	89 5d cc             	mov    DWORD PTR [ebp-0x34],ebx
  402b44:	a8 40                	test   al,0x40
  402b46:	0f 85 74 03 00 00    	jne    402ec0 <.text+0xce0>
  402b4c:	8b 5d b8             	mov    ebx,DWORD PTR [ebp-0x48]
  402b4f:	85 db                	test   ebx,ebx
  402b51:	0f 84 ae 04 00 00    	je     403005 <.text+0xe25>
  402b57:	25 00 40 00 00       	and    eax,0x4000
  402b5c:	89 7d b4             	mov    DWORD PTR [ebp-0x4c],edi
  402b5f:	89 c7                	mov    edi,eax
  402b61:	eb 14                	jmp    402b77 <.text+0x997>
  402b63:	e8 08 10 00 00       	call   403b70 <strcoll>
  402b68:	85 c0                	test   eax,eax
  402b6a:	8b 13                	mov    edx,DWORD PTR [ebx]
  402b6c:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  402b6f:	7e 22                	jle    402b93 <.text+0x9b3>
  402b71:	85 c9                	test   ecx,ecx
  402b73:	74 24                	je     402b99 <.text+0x9b9>
  402b75:	89 cb                	mov    ebx,ecx
  402b77:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  402b7a:	85 ff                	test   edi,edi
  402b7c:	89 34 24             	mov    DWORD PTR [esp],esi
  402b7f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  402b83:	75 de                	jne    402b63 <.text+0x983>
  402b85:	e8 16 11 00 00       	call   403ca0 <stricoll>
  402b8a:	85 c0                	test   eax,eax
  402b8c:	8b 13                	mov    edx,DWORD PTR [ebx]
  402b8e:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  402b91:	7f de                	jg     402b71 <.text+0x991>
  402b93:	89 d1                	mov    ecx,edx
  402b95:	85 c9                	test   ecx,ecx
  402b97:	75 dc                	jne    402b75 <.text+0x995>
  402b99:	8b 7d b4             	mov    edi,DWORD PTR [ebp-0x4c]
  402b9c:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
  402b9f:	c7 04 24 0c 00 00 00 	mov    DWORD PTR [esp],0xc
  402ba6:	e8 fd 0f 00 00       	call   403ba8 <malloc>
  402bab:	85 c0                	test   eax,eax
  402bad:	0f 84 18 03 00 00    	je     402ecb <.text+0xceb>
  402bb3:	8b 55 b4             	mov    edx,DWORD PTR [ebp-0x4c]
  402bb6:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
  402bb9:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  402bc0:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  402bc6:	85 d2                	test   edx,edx
  402bc8:	0f 8e d8 03 00 00    	jle    402fa6 <.text+0xdc6>
  402bce:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  402bd1:	e9 f5 02 00 00       	jmp    402ecb <.text+0xceb>
  402bd6:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [ebp-0x34],0x1
  402bdd:	8d 76 00             	lea    esi,[esi+0x0]
  402be0:	8b 65 a8             	mov    esp,DWORD PTR [ebp-0x58]
  402be3:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  402be6:	8d 65 f4             	lea    esp,[ebp-0xc]
  402be9:	5b                   	pop    ebx
  402bea:	5e                   	pop    esi
  402beb:	5f                   	pop    edi
  402bec:	5d                   	pop    ebp
  402bed:	c3                   	ret    
  402bee:	66 90                	xchg   ax,ax
  402bf0:	89 65 c0             	mov    DWORD PTR [ebp-0x40],esp
  402bf3:	89 04 24             	mov    DWORD PTR [esp],eax
  402bf6:	e8 6d 0f 00 00       	call   403b68 <strlen>
  402bfb:	83 c0 10             	add    eax,0x10
  402bfe:	c1 e8 04             	shr    eax,0x4
  402c01:	c1 e0 04             	shl    eax,0x4
  402c04:	e8 37 f5 ff ff       	call   402140 <__chkstk_ms>
  402c09:	29 c4                	sub    esp,eax
  402c0b:	89 de                	mov    esi,ebx
  402c0d:	8d 44 24 0c          	lea    eax,[esp+0xc]
  402c11:	89 c7                	mov    edi,eax
  402c13:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  402c16:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
  402c19:	3c 7f                	cmp    al,0x7f
  402c1b:	74 28                	je     402c45 <.text+0xa65>
  402c1d:	3c 7b                	cmp    al,0x7b
  402c1f:	74 3f                	je     402c60 <.text+0xa80>
  402c21:	84 c0                	test   al,al
  402c23:	8d 57 01             	lea    edx,[edi+0x1]
  402c26:	8d 4e 01             	lea    ecx,[esi+0x1]
  402c29:	88 07                	mov    BYTE PTR [edi],al
  402c2b:	0f 84 bc 04 00 00    	je     4030ed <.text+0xf0d>
  402c31:	3c 7b                	cmp    al,0x7b
  402c33:	0f 84 b4 04 00 00    	je     4030ed <.text+0xf0d>
  402c39:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
  402c3d:	89 d7                	mov    edi,edx
  402c3f:	89 ce                	mov    esi,ecx
  402c41:	3c 7f                	cmp    al,0x7f
