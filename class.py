total_cat=0
total_dog=0
total_animax=0
#Class mere : 
class animal () :
    def __init__(self,nom,age) :
        self.nom=nom
        self.age=age
    def courir (self) :
            print(f"run {self.nom}")
    def mider(self) :
            print(f"mider {self.nom}")
       


# les enfents
class chat (animal): 
    chats=[]
    global total_cat
    def __init__(self,nom,age,poids) :
        animal.__init__(self, nom, age)
        self.poids=poids
        chat.chats.append(self)
    total_cat+=1                 

class chien (animal): 
    chiens=[]
   
    def dog_input (x) :
        for x1 in range(0,x) :
            print(f"le chien {x1+1} :")
            z=chien(input("nom"),input("age"),input("sexe"))
            chien.chiens.append(z)
        global total_dog
        total_dog+=x
    def __init__(self,nom,age,sexe) :
        animal.__init__(self, nom, age)
        self.sexe=sexe
        chien.chiens.append(self)
  


v=chat(input("cat nom"),input("cat age"),input("cat poids"))
v.mider()

x=int(input("how many dog you wanna input ?"))
chien.dog_input(x)

total_animax+=total_cat+total_dog

print(f"total animux : {total_animax} ")
print(f"cat : {total_cat}")
print(f"dog : {total_dog}")

print("Hello keyboard")