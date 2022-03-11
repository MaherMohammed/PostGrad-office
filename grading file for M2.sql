exec  studentRegister 'Ahmed','Ali','123','MET',1,'Ahmed.Ali@gmail.com','streetA'

exec  studentRegister 'Mohamed','Ali','345','MET',0,'Mohamed.Ali@gmail.com','streetC'
exec  studentRegister 'Sara','Emad','326','IET',0,'Sara.Emad@gmail.com','streetB'

exec supervisorRegister 'Omnia','Ahmed','333','MET','Omnia.Ahmed@gmail.com'
exec supervisorRegister 'Alaa','Hesham','862','IET','Alaa.Hesham@gmail.com'


declare @success bit 
exec userLogin 1,123,@success output
print @success

exec addMobile 1,'0111111'

exec AdminListSup

exec AdminViewSupervisorProfile 4

--here there should be registered thesis

insert into Payment values(30000,3,25)
insert into Payment values(15000,2,30)
insert into Payment values(10000,1,10)

insert into Installment values('1/1/2021',1,10000,1)
insert into Installment values('1/1/2022',1,10000,0)
insert into Installment values('1/1/2023',1,10000,0)

insert into Installment values('2/1/2019',2,7500,0)
insert into Installment values('1/1/2020',2,7500,0)

insert into Installment values('1/1/2021',3,10000,1)



insert into Thesis values('Machine Learning', 'MS','identify top countries football players using machine learning','1/18/2020','1/18/2022','2/13/2022',null,1,3)
insert into Thesis values('Robotics', 'PHD','Make A nano robot for cancer Treatment','5/1/2019','5/1/2021','7/20/2021',90.5,2,2)
insert into Thesis values('Computer Vision', 'PHD','diagnose diseases and visualize body anatomy','6/5/2021','1/1/2024','3/10/2024',null,3,4)


insert into Publication values('identify top countries football players using machine learning','5/5/2020','GUC','1','GUC')
insert into Publication values('identify top countries football players using machine learning','11/15/2020','GUC','0','GUC')

--link thesis to student
insert into GUCianStudentRegisterThesis values(1,3,1)
insert into ThesisHasPublication values(1,1)
insert into ThesisHasPublication values(1,2)

insert into NonGUCianStudentRegisterThesis values(2,3,2)
insert into NonGUCianStudentRegisterThesis values(4,5,3)

---------------------

exec AdminViewAllTheses

declare @count int
exec AdminViewOnGoingTheses @count output
print @count

exec AdminViewStudentThesisBySupervisor

--here we should insert a course for the non gucian and link him to it

exec AddCourse 'CSEN102',6,4000
exec AddCourse 'CSEN501',5,10000
exec AddCourse 'CSEN502',8,9000




exec linkCourseStudent	1,2
exec linkCourseStudent	2,4
exec linkCourseStudent	3,4
-- add grade for courses
exec addStudentCourseGrade 1,2,60
exec addStudentCourseGrade 2,4,90
exec addStudentCourseGrade 3,4,20
-- add payments to the courses
insert into Payment values(10000,2,25)
insert into Payment values(10000,1,25)
insert into Payment values(10000,2,25)



insert into Installment values('1/1/2021',4,5000,1)
insert into Installment values('2/1/2021',4,5000,1)
insert into Installment values('1/1/2021',5,10000,0)
insert into Installment values('1/1/2021',6,5000,1)
insert into Installment values('2/1/2021',6,5000,0)


insert into NonGucianStudentPayForCourse values(2,4,1)
insert into NonGucianStudentPayForCourse values(4,5,2)
insert into NonGucianStudentPayForCourse values(4,6,3)



exec AdminListNonGucianCourse  1

exec addStudentCourseGrade 1,3,50

exec AdminUpdateExtension 1

exec AdminIssueThesisPayment 1,12000,3,0

exec AdminViewStudentProfile 1

exec AdminIssueInstallPayment 1,'1/1/2021' 

exec AdminListAcceptPublication


exec ViewExamSupDefense '1/6/2021'

exec EvaluateProgressReport 4,123,1,1

exec ViewSupStudentsYears 4

exec SupViewProfile 4

-------------------------------------------------------
exec UpdateSupProfile 3,'Abdullah Saad','IET'


exec ViewAStudentPublications 1

exec AddDefenseGucian 1,'12/30/2022','GUC'

-- add defense for non gucian student whose grades above 50
exec AddDefenseNonGucian 2,'7/20/2021','Hall13'
--add defense for non gucian student whose grades less than 50
exec AddDefenseNonGucian 3,'3/10/2024','Hall 15'

exec AddExaminer 1,'12/30/2022','Ehab','1','Computer Science'

-- insert progress reports

insert into GUCianProgressReport values(1,1,'5/20/2020',2,50,'report 1',1,3)
insert into NonGUCianProgressReport values(2,1,'7/20/2019',3,50,'report 1',2,3)
insert into NonGUCianProgressReport values(2,2,'1/1/2021',0,50,'report 2',2,3)
-- cancel thesis not zero
exec CancelThesis 1
exec CancelThesis 2



exec AddDefenseGrade 1,'12/30/2022',95
exec AddGrade 1

exec AddCommentsGrade 1,'12/30/2022','great'

exec viewMyProfile 4
exec viewMyProfile 1

exec editMyProfile 4,'Sara','Emad','helloworld','sara.emad@guc.edu.eg','Cairo','PHD'

exec addUndergradID 1,'18999'

exec ViewCoursesGrades 4

exec ViewCoursePaymentsInstall 4


exec ViewThesisPaymentsInstall 1

exec ViewThesisPaymentsInstall 4

exec ViewUpcomingInstallments 1


exec ViewMissedInstallments 4

exec AddProgressReport 3,'12/12/2021',4,1

exec FillProgressReport 3,1,50,'report 2',4

exec ViewEvalProgressReport 1,1,1

exec addPublication 'publication 10','1/1/2019','IEEE','GUC','1'
exec linkPubThesis 3,1
