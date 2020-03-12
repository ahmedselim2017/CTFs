from datetime import date

month = 1
real_day = 26

leap_years = []
possible_dates = []
for i in range(1016, 1996, 20):
    full_date = date(i,  month, real_day)
    if(full_date.strftime("%A") == "Monday"):
        possible_dates.append(full_date)


print(possible_dates)
print("Mozart")
