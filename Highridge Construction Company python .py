import random

payment_slip = []

# creating the worker's name
for i in range(400):
    workers_id = i + 1
    workers_name = f"worker_{workers_id}"

# creating the worker's gender
    gender = random.choice(["Male", "Female"])

# creating the worker's salary
    salary = random.randint(5000, 30000)

# create a dictionary with the worker's data
    workers_data = {
    "name": workers_name,
    "gender": gender,
    "salary": salary
    }

# adding the dictionary to the list
    payment_slip.append(workers_data)

# conditional statements
for worker in payment_slip:
    try:
        if worker['salary'] > 10000 and worker['salary'] < 20000:
            worker['employee_level'] = "A1"

        if worker['salary'] > 7500 and worker['salary'] < 30000 and worker['gender'] == 'Female':
            worker['employee_level'] = "A5-F"
        
# print the payment_slip
        print("="*40)
        print(f" Highridge Construction Company")
        print("-"*40)
        print(f"employee_name : {worker['name']}")
        print(f"gender : {worker['gender']}")
        print(f"salary : ${worker['salary']:,}")
        print(f"employee_level : {worker['employee_level']}")
        print("\n")
        
    except (KeyError, NameError, TypeError):
        print("employee_level : N/A")
        print("\n")
        
