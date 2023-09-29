create database _fitvisor;
use _fitvisor;
Create Table Goals
(
	GoalID int PRIMARY KEY,
	GoalDescription varchar(50) NOT NULL,
)
Create table Users
(   
    UserName varchar(50) NOT NULL,
	Userid int primary key,
	UserAddress varchar(50) NOT NULL,
	UserAge int NOT NULL,
	GoalID int NOT NULL FOREIGN KEY REFERENCES Goals(GoalID),
	UserWeight float NOT NULL,
	UserPhone varchar(20) NOT NULL,
	UserGender varchar(10) ,
	UserMedicalCondition varchar(50),
	UserAllergy varchar(20)
)
Create table Nutritionist
(
	NID int primary key,
	NutriName varchar(20) NOT NULL,
	NutriAddress varchar(50) NOT NULL,
	NutriAge int NOT NULL,
	NutriPhone varchar(20) NOT NULL,
	NutriGender varchar(10) NOT NULL
)
Create table UserCredentials
(
	Userid int primary key foreign key references Users(Userid),
	UserName varchar(50),
	UserEmail varchar(60) NOT NULL,
	UserPassword varchar(30) NOT NULL
)
create Table NuCredentials(
NID int PRIMARY KEY foreign key references Nutritionist(NID),  
UserName varchar(50),
email varchar(60) NOT NULL,
password varchar(30) NOT NULL
)
create table DiscussionRoom
(
Did int primary key,
Userid int foreign key references Users(Userid),
ttime time,
ddate date,
comments text
)
create table TransformationJourney
(
Tid int primary key,
Userid int foreign key references Users(Userid),
feedback text
)
create table Consultation
(
Userid int foreign key references Users(Userid),
NID int references Nutritionist(NID)

)
create Table Recipes(
recipeID int foreign key references Goals(GoalID),
recipecategory text,
recipeDes text,
priceRange int,
)

create Table Workouts(
workoutID  int foreign key references Goals(GoalID),
workoutcategory text,
workoutDes text,
)
Create Table Intake
(
	IntakeID int PRIMARY KEY,
	UserID int FOREIGN KEY references Users(Userid) NOT NULL,
	IntakeName varchar(50) NOT NULL,
	IntakeQuantity float NOT NULL,
Date date NOT NULL
)

Create Table Step_Count
(
	SC_ID int PRIMARY KEY,
	UserID int FOREIGN KEY references Users(Userid) NOT NULL,
	NumOfSteps int NOT NULL,
	Date date NOT NULL,
	CaloriesBurnt int NOT NULL
)


insert into Goals
values(1,'Lose Fat'),
      (2,'Gain Muscle'),
	  (3,'Build Strength'),
	  (4,'Improve Endurance'),
	  (5,'Improve Flexibility'),
	  (6,'Toning'),
	  (7,'Gain Weight')

insert into Users
values('Manal Rizwan',1,' PGECHS',23,1,70.5,'09876543','Female',NULL,NULL),
      ('Wardah Maqbool',2,'Model Town',18,7,45.5,'65431234','Female',NULL,'Nuts'),
	  ('Abdullah Haider',3,'Bahria Town',45,3,45,'78901123','Male','Heart Condition',NULL),
	  ('Iqbal Elahi',4,'DHA',27,2,48.7,'99933456','Male',NULL,'Lactose'),
	  ('Malaika Tanveer',5,'Johar Town',34,6,63.3,'67854333','Female','Respiratory Issues','Eggs'),
	  ('Sameer Naveed',6,'Iqbal Town',50,4,77,'11122243','Male','Asthma','Gluten')
insert into Nutritionist
values(1,'Eimaan Sajeel','PGECHS',26,'78902344','Female'),
      (2,'Amer Ikram','Defence',37,'90007823','Male'),
	  (3,'Sabaina Kashif','DHA',45,'87653344','Female'),
	  (4,'Huzaifa Farooq','Model Town',55,'87214570','Male'),
	  (5,'Elise Siddiqui','Johar Town',28,'44455521','Female')
insert into UserCredentials
values(1,'Manal Rizwan','manalriz@gmail.com','encrypt123'),
      (2,'Wardah Maqbool','maqboolwardah@gmail.com','783451'),
	  (3,'Abdullah Haider','haider123@gmail.com','11111'),
	  (4,'Iqbal Elahi','Iqbaliscool@yahoo.com','notellingyou'),
	  (5,'Malaika Tanveer','Malaika12@yahoo.com','doubleclick'),
	  (6,'Sameer Naveed','Lostboy123@gmail.com','foodforeal')
insert into NuCredentials
values(1,'Eimaan Sajeel','EimaanNutri@gmail.com','hogwarts'),
      (2,'Amer Ikram','Amer_ikram@yahoo.com','_A_mer'),
	  (3,'Sabaina Kashif','sab_kashif@gmail.com','_sab'),
	  (4,'Huzaifa Farooq','Farooqi123@yahoo.com','farooq789'),
	  (5,'Elise Siddiqui','elise678@gmail.com','liz_89')

insert into Consultation
values
(1,5),
(2,4),
(3,1),
(4,2),
(5,3),
(6,1)
insert into Recipes
values
(1,'Veggie and Hummus Sandwich','Spread one slice of bread with hummus and the other with avocado. 
Fill the sandwich with greens, bell pepper, cucumber and carrot. 
Slice in half and serve.',1000),
(2,'Chicken,Sweet Potato and Greens','Start by cutting your sweet potatoes into wedges and season with salt, pepper and paprika, then bake for 25 minutes.
 Pour boiling water over the green beans with a pinch of salt and allow to blanch for 1-2 minutes.
Place the chicken breast on a large non-stick frying pan on a medium heat and cook until brown on one side,then flip the chicken over and flavour each breast with spices of choice.
Drain the green beans from the salted water.
 Add 2 handfuls of spinach, scoop of wedges, green beans and a chicken breast for a single serving.',2000),
(3,'Chicken Tikka Masala','Pulse ginger and garlic in a food processor until finely chopped. 
Add onion and pulse until finely chopped.
Toss chicken with 1 1/2 tsp garam masala and 1 tsp salt. 
Heat 1 Tbsp olive oil in a large skillet over medium-high heat. 
Add chicken and cook, rotating halfway through cooking, until cooked through, about 6 - 7 minutes total. 
Transfer chicken to a plate.
Heat remaining 1 Tbsp olive oil in same skillet over medium-high heat. 
Add chopped onion mixture and saute until onions have softened, about 3 minutes. 
Add tomato paste, remaining 1 Tbsp garam masala, the paprika, and cayenne and cook, stirring constantly, 30 seconds. 
Add crushed tomatoes, season with salt to taste, and cook stirring occasionally until mixture is hot, about 2 minutes***. 
Return chicken to pan and cook 1 minute longer. 
Remove from heat, stir in Greek yogurt and lemon juice. 
Serve warm over basmati rice topped with cilantro.',3000),
(4,'Eggs with roasted tomato sauce','Preheat the oven to 400°. 
In a roasting pan, toss the tomatoes and garlic with the oil and season with salt and pepper. 
Arrange the tomatoes cut side up and roast for 15 minutes; turn and roast until soft, 20 minutes. 
Let cool, then scrape the mixture into a blender and puree. 
Add the oregano.
Set 4 shallow ovenproof bowls on a baking sheet. 
Strain the pureed sauce into the bowls, pressing on the solids. 
Crack 2 eggs into each bowl and season with salt and pepper.
Sprinkle the cheese over the eggs and bake the eggs for about 15 minutes, until the whites are just set. 
Serve hot.',1500),
(5,'Garlic Ginger Chicken and Broccoli','Preheat the oven to 425 degrees. 
Blend all sauce ingredients together until smooth.
 Place chicken, broccoli, and red pepper on a sheet pan.
 Pour about 1/2 cup sauce over top of the chicken and just a few tablespoons over the veggies.
 Bake for 10-15 minutes.
 While the broccoli and chicken are roasting, simmer another 1/2 cup or so of sauce in a small saucepan over medium low heat until it’s thickened. 
 Drizzle it over the finished chicken and broccoli. 
 Finish with sesame oil, sesame seeds, or scallions.
 Voila! Happy bowls and meal prep lunches.',2000),
 (6,'Peri Peri Chicken and Spicy Rice','Bring your rice, water, and coarse salt (¼ tsp. per cup of rice) to a boil. 
 Cover, and reduce to a slow, steady simmer for 30 minutes.
Spray a large non-stick frying pan with your low calorie cooking spray and place over a medium-high heat.
Add your onion and garlic to the pan and cook until soft. 
Then add your cumin, smoked paprika and cayenne pepper and allow the flavours to combine, then add your warm cooked rice to the pan and mix in your peas for a further 3 minutes.
Spray another large, heavy-based non-stick frying pan with your low calorie cooking spray and place over a medium-high heat, add your chicken and cook for 5 minutes then remove.
To steam your broccoli, add your florets to a microwavable bowl with a lid along with 1 tbsp. of water and salt. 
Keep the lid on and cook for 2-3 minutes on high.
Serve up with chopped tomato and a sprinkle of fresh thyme.',3500),
(7,'Egg,Cheese and Salad Wrap',' Boil two eggs and mash them.
Take 2 cheese slices, an avocado  and 1 cup salad vegetables (eg. lettuce, cucumber, carrot, capsicum).
Roll these ingredients up in tortilla bread.',1500)
insert into Step_Count
values
(1,2,2000,'01-05-22',80),
(2,3,6000,'01-05-22',240),
(3,4,10000,'01-06-22',400),
(4,5,15000,'01-07-22',600),
(5,2,7000,'01-07-22',280),
(6,3,1000,'01-07-22',40),
(7,4,9000,'01-08-22',360),
(8,1,1000,'09-04-22',40)
insert into DiscussionRoom
values
(1,1,'8:00','01-02-22','Hi! I am new here'),
(2,2,'8:30','01-02-22','Hey! Hope this website helps you in achieving your goal :)'),
(3,1,'8:31','01-02-22','Which Nutritionist is the best in your opinion?'),
(4,3,'8:32','01-02-22','In my opinion, Dr.Eimaan Sajeel is really accomodating 
and I have been consulting her for two months now. I am fairly satisfied with my progress.
She really knows how to boost your morale.'),
(5,2,'8:35','01-02-22','You should also consider Dr.Amer Ikram as he has years of experience in this field. 
He has done volunteer work in many countries.'),
(6,1,'8:36','01-02-22','Thank you for the reccomendations guys!'),
(7,2,'8:37','01-02-22','No problem! We are a community here :)'),
(8,1,'8:38','01-02-22','Glad to be part of this community')
use _fitvisor;
insert into Intake
 values
 (1,1,'13:30','Grilled Chicken',85,'1/1/2021'),
 (2,4,'12:11','Salmon',100,'11/2/2021'),
 (3,2,'2:27','Beef Burger',22,'12/3/2022'),
 (4,5,'12:47','Tuna',30,'9/8/2022'),
 (5,3,'4:45','Apples',45,'2/6/2022'),
 (6,6,'6:31','Walnuts',56,'6/2/2022'),
 (7,4,'3:30','Fish and chips',100,'8/1/2022'),
 (8,6,'8:30','Tacos',35,'4/2/2022')

 insert into Workouts
values
(1,'Jumping Jacks','First up, Jumping Jacks. 
Start in a standing position with your arms resting at your sides. 
Slightly bend your knees and jump your legs out so they’re a little more than shoulder-width apart. 
At the same time, thrust your arms out and over your head. 
Then return your body to your starting position and repeat for 30 seconds of continuous jumping. 
Now it is time for burpees. 
Stand with your feet shoulder-width apart. 
In one fluid motion, lower your body into a squat, place your hands on the ground in front of your feet, and jump your feet back so you land in a plank position. 
Then jump to return your feet to near your hands and complete a powerful jump straight up into the air. 
Repeat. 
To make it more challenging, add a push-up when you’re in the plank position. 
If you’re a beginner, do a squat thrust instead for lower impact: The move is similar to a burpee, 
except you don’t complete the explosive jump at the end and simply stand up. 
Up next, squat jumps. 
With your feet shoulder-width apart, 
lower your body into a squat position (back and upper body stay lifted, and hips and butt lower down to the ground as if you’re sitting in an imaginary chair). 
Keep your core tight and launch into an explosive jump. 
Land lightly on your feet and immediately lower into a squat again. 
Repeat. 
Now, we do Skater Jumps.
Stand with your feet hip-width apart. 
With your right foot planted, cross your left leg behind you and out to your right side (almost as if you’re doing a curtsy lunge).
Your weight should be supported by your right leg. 
Simultaneously, swing your right arm out to about shoulder height and your left arm across your body reaching toward your right hip. 
Then jump to your left and repeat the movement on your left side. 
Land on your left foot and swing your right leg behind you and out to your left side. 
(Left arm should simultaneously swing out to your left side and right arm should extend toward your left hip.)
Continue leaping back and forth with arms swinging in a skating motion. Repeat for ten minutes'),



(2,'Shoulder Press','First up, shoulder press.
Stand with feet shoulder-width apart and hold the dumbbells at shoulder height with your elbows at a 90-degree angle. 
Slowly lift the dumbbells above your head without fully straightening your arms. 
Pause at the top. 
Slowly return to the start position. 
Repeat ten times. 
Now, time for deadlifts. 
Walk up to the barbell until your shins are just one inch away – this will place the barbell directly over your midfoot, which is the balance point for all barbell exercises. 
Your heels should be 6-8 inches apart, a more narrow stance than your squat.
Lean over with stiff legs, and take a grip that places your elbows just outside your knees. 
Be careful not to move or roll the bar from your midfoot. 
Bring your shins forward to touch the barbell – again without moving or rolling it away from your midfoot.
Freeze your hips in place – they are not allowed to move from here. 
Squeeze your chest up to tighten all the muscles of your back. 
Don’t drop your hips while you squeeze your chest up. 
This crucial step sets your lumbar spine in normal anatomical extension. 
Push the floor away and drag the barbell up your legs while maintaining lumbar extension. 
Repeat 15 times. 
Now, it is time for chest press. 
Lie on a flat bench with your feet pressing into the floor. 
Draw your shoulders down and back to press them into the bench.
Hold two dumbbells with palms facing forward and your thumbs wrapped around the handle. 
On an inhale, lower the dumbbells slightly wider than your mid-chest, slowly and with control. 
Gently touch the dumbbells to your chest. 
On an exhale, press your arms upwards, keeping your elbows slightly bent. 
Position the dumbbells just below eye level. Do 2 to 3 sets of 8 to 15 repetitions. '),

(3,'Mountain Climbers','First, Mountain climbers. 
Pull your right knee into your chest as far as you can. 
Switch legs, pulling one knee out and bringing the other knee in.
Keep your hips down and run your knees in and out as far and as fast as you can. 
Alternate inhaling and exhaling with each leg change. Repeat for ten minutes. 
Next up, push-ups. Get down on all fours, placing your hands slightly wider than your shoulders. 
Straighten your arms and legs. 
Lower your body until your chest nearly touches the floor.
Pause, then push yourself back up. 
Repeat 20 times.
Now, plank. 
Plant hands directly under shoulders (slightly wider than shoulder width) like you’re about to do a push-up. 
Ground toes into the floor and squeeze glutes to stabilize your body. 
Your legs should be working, too — be careful not to lock or hyperextend your knees.
Neutralize your neck and spine by looking at a spot on the floor about a foot beyond your hands. 
Your head should be in line with your back. 
Hold the position for 20 seconds. 
As you get more comfortable with the move, hold your plank for as long as possible without compromising your form or breath.'),

(4,'Body weight squats','First up, Body weight squats.
Stand with your hands on the back of your head and your feet shoulder-width apart with your feet turned out slightly to open the hip joint.
Lower your body until your thighs are parallel to the floor. 
Pause, then return to the starting position. 
Repeat 15 times. Now, time for Walking lunges. 
Step forward with your right leg, putting the weight into your heel. 
Bend the right knee, lowering down so that it is parallel to the floor in a lunge position. 
Pause for a beat.
Without moving the right leg, move your left foot forward, repeating the same movement on the left leg. 
Repeat for 5 minutes. 
Lastly, Crunches. 
Lie on your back with your feet flat on the floor, hip-width apart.
Breathe out, squeeze your abs and lift your head, neck and shoulders up toward the ceiling.
Breathe in and return to the starting position.
Repeat 10 to 12 times for 5 rounds.'),

(5,'Butterfly Groin Stretch','First up, Butterfly Groin Stretch.
Sit down on the floor or ground with your legs in front of you. 
Reach forward and grab your right foot. 
It is OK to bend your knee to help your hand and foot connect.
Gently pull your right foot up towards your groin bending until it is at a comfortable spot and the sole of the foot is facing your left thigh. 
Bend your left knee to bring your left foot toward your groin so that its sole touches the sole of your right foot. 
Hold your feet with your hands and rest your elbows on your knees. 
While keeping your back straight (no slouching), allow your knees to fall towards the ground. 
You can apply gentle pressure on the inner thigh by pressing gently on the knees with the elbows. 
You should feel gentle pulling and tension in the groin.
Hold the stretch for 20 to 30 seconds. 
Release and repeat three times. 
Up next, Seated Hamstring Stretch. 
Sit on the edge of a chair, straighten one leg in front of the body with the heel on the floor. 
Straighten the spine by sitting tall and rolling the pelvis forward. 
Hold this stretch for 30 seconds.
Repeat 5 times.
Now, Standing Quad Stretch.
Stand on your left foot and grab your right shin by bending your leg behind you. 
Tuck your pelvis in, pull your shin toward your glutes, making sure your knee is pointing to the ground. 
Try not to pull the knee backward or sideways.
Hold for 30 seconds and then switch sides.
Repeat for 5-7 minutes'),
(6,'Sit-ups','First up, sit-ups. 
Lie on your back on a mat with knees bent and feet flat on the floor. 
Cross your arms in front of your chest. Crunch your ab muscles to lift your shoulders off the mat. 
Hold for a second, then slowly come back down to starting position. 
Repeat 15 times. 
Next up, Bending Windmill Stretch.
Start with your feet slightly wider then shoulder width apart.
Point both arms out to your side so that your upper body looks like a "T". 
Keeping your legs straight. 
Bend and rotate at the waist so that your right arm reaches down and touches your left foot. 
Stand back up and repeat the same motion except this time bring the left hand down to the right foot and then stand back up.
Repeat for 12 minutes. 
Lastly, Push-ups. 
Get down on all fours, placing your hands slightly wider than your shoulders. 
Straighten your arms and legs. 
Lower your body until your chest nearly touches the floor. 
Pause, then push yourself back up. 
Repeat 10 times.'),



(7,'Triceps Dip', 
'First up, Triceps Dip. 
Press into your palms to lift your body and slide forward just far enough that your behind clears the edge of the chair. 
Lower yourself until your elbows are bent between 45 and 90 degrees. ... 
Push yourself back up slowly until your arms are almost straight. 
Repeat 10 times.
Next up, Squats. 
Stand with feet just wider than hip-width apart, toes pointed slightly out, clasp hands at chest for balance. 
Send hips back and bend at knees to lower down as far as possible with chest lifted. 
You can swing your arms back for momentum.
Press through heels back up to explode up, jumping vertically in the air.
Repeat 15 times. 
Lastly, Crunches.
Lie on your back with your feet flat on the floor, hip-width apart.
Breathe out, squeeze your abs and lift your head, neck and shoulders up toward the ceiling. 
Breathe in and return to the starting position. 
Repeat 10 to 12 times for 5 rounds.')
insert into TransformationJourney
values
(1,4,'Getting bullied at school because of being underweight is a sad reality that we haven’t fixed yet. 
I was mocked by my classmates and called names. 
While looking for inspiration to fight back,
I stumbled across Fitvisor and since then I have gained muscle mass and improved my endurance'),
(2,1,'Fitvisor has honestly been my life saver!
Weighing my heaviest at 255lbs to now weighing 186lbs is unbelievable over a 6-month period. 
Losing weight, working out, and eating healthy has been a complete life style change for me.
I haven’t met all of my goals just yet, but I’m on my way for sure. 
I would not choose any other platform. 
Thank you Fitvisor for making me feel better than ever!'),
(3,2,'I’ve just completed my 6th week. 
I can’t recommend Fitvisor enough. 
The results I got speak for themselves- in just 6 weeks I lost 18 lbs of weight and a staggering 8 inches around my waste! 
To sum it up, Fitvisor is a great place with great people.. What else can you ask for!'),
(4,3,'I always wanted to gain weight. 
Fitvisor helped me do it. 
In just 2 months, I have gained 7 pounds. 
They provide amazing high-protein weight gaining recipes. Highly recommended'),
(5,5,'I gave improved my flexibilty and muscle mass. 
Fitvisor helped me do it. I can see visible difference'),
(6,6,'Starting here in February 2019. 
Can honestly say coming here has been one of the best things I have ever done. 
The nutritionists are supportive and inspirational. 
Their nutrition plans really work, and I’ve lost more than three stone. 
I am the fittest and strongest I have been in nearly 30 years. Thanks!')
select * from Goals
select * from Users
select * from UserCredentials
select * from Nutritionist
select * from NuCredentials
select * from Consultation
select * from Recipes
select * from Workouts
select * from TransformationJourney
select * from Step_Count
select * from Intake
select * from DiscussionRoom

Alter procedure consult @name varchar(50),@uid int
as begin
declare @id1 int
select @id1=NID from Nutritionist where NutriName=@name
insert into Consultation
values(@uid,@id1)
print ' You have been assigned a Nutritionist '
end

create procedure getmail @name varchar(50), @email varchar(60) output
as begin
select @email = NuCredentials.email from NuCredentials where NuCredentials.UserName = @name
end

create procedure signup @add varchar(50),@age int,@goaldes varchar(50),@weight float,@phone varchar(20),@gen varchar(10),@med varchar(50),@allergy varchar(20),@name varchar(20),@email varchar(60),@pass varchar(30)
as begin
declare @id int
select @id=max(Userid)+1 from Users
declare @goalid int
select @goalid=GoalID from Goals where GoalDescription=@goaldes 
insert into Users 
values(@name,@id,@add,@age,@goalid,@weight,@phone,@gen,@med,@allergy)
insert into UserCredentials
values(@id,@name,@email,@pass)
end


create trigger _signup
on Users
after insert
as begin
print'Successful Signup'
end

create procedure login @name varchar(50),@pass varchar(30),@flag int , @op int output
as begin
if(@flag=1)
begin
declare @flag1 int
set @flag1=0
select @flag1=1 from UserCredentials where UserName=@name and UserPassword=@pass
if(@flag1=1)
begin
print 'successfully logged in'
select @op= UserCredentials.Userid from UserCredentials where UserName=@name 

RETURN @op
end
else
begin
print 'incorrect credentials'
set @op=0
end
end
else
begin
declare @flag2 int
set @flag2=0
select @flag2=1 from NuCredentials where UserName=@name and password=@pass
if(@flag2=1)
begin
print 'successfully logged in'
--select @NutID = select NuCredentials.NID from NuCredentials WHERE Username= @name= 
select @op= NuCredentials.NID from NuCredentials where UserName=@name
RETURN @op

end
else
begin
print 'incorrect credentials'
set @op=0
end
end
end

declare @output int
exec login 'Amer Ikram','_A_mer',0,@output output
select @output AS OP

create procedure dailyintake @id int,@intake varchar(50),@quantity float
as begin
declare @x int
set @x=0
select @x=max(IntakeID)+1 from Intake
insert into Intake 
values(@x,@id,@intake,@quantity,getdate())
end

create trigger _intake
on Intake
after insert
as begin
print' Your intake has been added '
end



create procedure viewintake @name varchar(50)
as begin
declare @id int
select @id=Userid from UserCredentials where UserName=@name
select IntakeName,IntakeQuantity,IntakeTime from Intake where UserID=@id
end


create procedure consult @name varchar(50),@uname varchar(50)
as begin
declare @id1 int
select @id1=NID from Nutritionist where NutriName=@name
declare @id2 int
select @id2=Userid from Users where UserName=@uname
insert into Consultation
values(@id2,@id1)
print ' You have been assigned a Nutritionist '
end


alter procedure cal @uid int,@num int,@cals int output
as begin
declare @x int
set @x=@num*0.045
declare @y int
select @y=max(SC_ID)+1 from Step_Count
insert into Step_Count
values(@y,@uid,@num,getdate(),@x)
select @cals=CaloriesBurnt
from Step_Count
where UserID=@uid
end



create view helpingmaterial
as
select * from recipes

create procedure retrievegoalid @name varchar(50),@goal int output
as begin
select @goal=GoalID from Users where UserName=@name
end
--test case
declare @goalid int
exec retrievegoalid 'Manal Rizwan',@goalid output
select recipecategory,recipeDes
from helpingmaterial
where recipeID=@goalid




create view _workouts
as
select * from Workouts
--test case
--declare @goalid int
--exec retrievegoalid 'Manal Rizwan',@goalid output-- this will fetch the goal id
--select workoutcategory,workoutDes
--from _workouts
--where workoutID=@goalid
--2.10-----
create procedure discussion_room @un varchar(50), @txt text
as begin
declare @Did int
declare @uid int
select @Did=ISNULL(MAX(Did)+1, 1)from DiscussionRoom
select @uid=Users.Userid from Users where @un=Users.UserName
insert into DiscussionRoom
values(@Did,@uid,(select convert(TIME,SYSDATETIME())),getdate(),@txt)
end
--2.11----
create procedure transforjourney @un varchar(50), @feed text
as begin
declare @tid int
declare @uid int
select @tid=ISNULL(MAX(Tid)+1, 1)from TransformationJourney
select @uid=Users.Userid from Users where Users.UserName=@un
insert into TransformationJourney
values(@tid ,@uid,@feed)
end
--2.11---- VIEW   displays all the transformations
create view transformjourneyview
as
select feedback
from TransformationJourney

--view for user profiles (DISPLAYS THE LIST OF ALL USER PROFILES)-----
create view userprofile
as
select users.UserName,users.UserWeight,users.UserPhone,users.UserMedicalCondition,users.UserGender,users.UserAllergy,users.UserAge,users.UserAddress
from [Users]
--trigger for phone number----
create trigger trigforphonenum
on [Users]
after insert
as begin 
declare @p varchar(20)
select @p=UserPhone
from inserted
if(len(@p)>8)
begin 
print 'Invalid phone number'
update [Users]
set [Users].UserPhone='-'
where [Users].UserPhone=@p
end
end
--trigger after deletion of chat from discussion room----
create trigger trigdis
on DiscussionRoom
after delete
as begin
print 'Your chat has been deleted'
end






--use _fitvisor
--Select * from Nutritionist N JOIN NuCredentials NU ON N.NID=NU.NID WHERE N.NID=2

