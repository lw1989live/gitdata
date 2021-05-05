"""
本模块用于计算公司员工的薪资
"""
company = "北京尚学堂"

def yearSalary(monthSalary):
    """
    根据传入的月薪的值，计算出年薪：monthsalary*12
    """
    return monthSalary * 12

def daySalary(monthSalsry):
    """
    根据传入的月薪，计算出1天的薪资。一个月按照22.5天计算（国家规定的工作日）
    """
    monthSalsry / 22.5

if __name__ == "__main__":
    print(yearSalary(3000))

