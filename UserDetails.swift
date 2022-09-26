struct Users{
    var name = ""
    var age = 0
    var address = ""
    var rollno = 0
    var courses = [String]()
    
    mutating func addUserDetails(_ name: String, _ age: Int, _ address: String, _ rollno: Int, _ courses: Array<String>){
        self.name = name
        self.age = age
        self.address = address
        self.rollno = rollno
        self.courses = courses
        }
    
    mutating func displayUserDetails()
    {
        print("--------------------------------------------------------------------------------------")
        print("Name           Roll Number         Age          Address             Courses")
        print("--------------------------------------------------------------------------------------")
        print("\(name)        \(rollno)                  \(age)          \(address)       \(courses)")
        
    }
}

var allUsers: [Users] = []
var x = Users()
x.addUserDetails("Achyut", 23, "Ranchi, piska", 0, ["Eng","Hind","Maths"])
x.displayUserDetails()
allUsers.append(x)

var y = Users()
y.addUserDetails("Ram", 23, "Ranchi, ratu", 1, ["Eng","Hind","Maths"])
y.displayUserDetails()
allUsers.append(y)

var z = Users()
z.addUserDetails("Raju", 29, "Ranchi, bariatu", 2, ["Eng","Hind","Maths"])
z.displayUserDetails()
allUsers.append(z)

//Deleting the User with roll number = 2
let i = 2

for man in allUsers{
    if(man.rollno == i)
    {
        allUsers.remove(at: 2)
    }
        
}

for man in allUsers{
    print(man)
}









