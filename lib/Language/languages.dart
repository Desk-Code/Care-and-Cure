import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'appName': 'Care and Cure',
          'rule1_1': 'Welcome to Care and Cure',
          'rule1_2':
              'Ready to use Application? Swipe Right to left and learn the basics of Application.',
          'rule2':
              'Info : This is info box here you know how to work login section.\n2 : This is Patient side login activity.\n3 : This is Doctor side login activity.\n4 : This is Hospital side login activity.',
          'rule3': 'Please Select Your Preference Language',
          'select': 'Select Language',
          'rule4':
              'Desk-Code has worried about admin and user privacy. So forget privacy related and use smooth and excellent app.',
          'loginInfo':
              'Login according to your field \n\n* PATIENT LOGIN Query \nLogin first and Patient can only see own data. \n\n* Hospital LOGIN Query \nRegister First If you have not part of MediSys for that goto hospital login button and register. Now you are part of MediSys. You are Admin And Handle all Data. \n\n* Doctor LOGIN Query \nDoctor can only see own data and update own data Doctor details will be only add by hospital admin staff. \n\nHere Hospital Admin is main to handle all of details. Hospital can add doctor details, patient details etc...',
          'sideName': 'Patient, Hospital & Doctor',
          'otpVerification': 'OTP Verification',
          'otpSend': 'Please Enter the OTP send to you',
          'otpVeriInfo':
              'We will send you an one time password \n on this given mobile number',
          'otpNotRecieve': 'Didn\'t receive the otp?',
          'otpResend': 'RESEND OTP',
          'patientLogin': 'Patient Login',
          'doctorLogin': 'Doctor Login',
          'hospitalLogin': 'Hospital Login',
          'notHaveAccount': 'Don\'t have an Account ?',
          'register': 'Register',
          'getOtp': 'Get OTP',
          'start': 'Start',
          'next': 'Next',
          'previous': 'Previous',
          'verify': 'Verify',
          'signupTitle': 'Let\'s create your account....',
          'hospitalName': 'Hospital Name',
          'hospitalMNumber': 'Hospital Mobile Number',
          'hospitalEmail': 'Hospital Email',
          'hospitalAddress': 'Hospital Address',
          'hospitalUpiId': 'Hospital Upi Id',
          'password': 'Password',
          'signupButton': 'SignUp Now',
          'hospital': 'Hospital',
          'certificate': 'Certificate',
          'addImage': 'Add Image',
          'addImageInfo':
              'Please Attached Your Document Image for verifying Hospital',
          'done': 'Done',
          'select file': 'Select File',
          'upload file': 'Upload File',
          'register error':
              'Your PhoneNumber Is Not Register With The Hospital',
          'tfError': 'This field is required',
          'userAdded': 'User Added',
          'faiAddUser': 'Failed to Add user',
          'userDeleted': 'User Deleted',
          'faiDelUser': 'Failed to Delete user',
          'userUpdated': 'User Updated',
          'faiUpdUser': 'Failed to update data',
          'verfiComp': 'Verification Completed',
          'profile': 'Profile',
          'dashBoard': 'DashBoard',
          'logout': 'Log Out',
          'confirm': 'Please Confirm',
          'logoutAlert': 'Do you want to logout ?',
          'no': 'No',
          'yes': 'Yes',
          'disease': 'Disease',
          'payableAmount': 'Payable Amount',
          'update': 'Update',
          'search': 'Search',
          'patientName': 'Patient Name',
          'mobileNo': 'Mobile No',
          'email': 'Email',
          'gender': 'Gender',
          'bloodGroup': 'Blood Group',
          'age': 'Age',
          'address': 'Address',
          'admitDate': 'Admit Date',
          'addDP': 'Add Disease and Payment',
          'doctorName': 'Doctor Name',
          'adharNumber': 'Aadhar Number',
          'specialist': 'Specialist',
          'qualification': 'Qualification',
          'payment': 'Payment',
          'medicine': 'Medicine',
          'payAmount': 'Pay Amount',
          'roomNo': 'Room No.',
          'wardNo': 'Ward No.',
          'payInfo1': 'Make Payment With Easy Way',
          'payInfo2': 'your Payment On Way...',
          'enterAmount': 'Enter Amount',
          'slidePay': 'Slide to Pay',
          'payError':
              'Please Check Payable Amount First or Its not higher than your Pay Amount',
          'nursing': 'Nursing',
          'wardBoy': 'Ward Boy',
          'reception': 'Reception',
          'cleannerStaff': 'Cleanner Staff',
          'medical': 'Medical',
          'lab': 'Lab',
          'rmo': 'RMO',
          'otstaff': 'OT Staff',
          'assistantDr': 'Assistant Dr.',
          'fullName': 'Full Name',
          'phIsReq': 'Phone Number is required',
          'entInLength': 'Enter Number In Length',
          'sGender': 'Select Your Gender',
          'male': 'Male',
          'female': 'Female',
          'validRange': 'Enter a Valid Age',
          'ageIsReq': 'Age is required',
          'emailIsReq': 'Email is required',
          'validEmail': 'Email is not a valid format',
          'aadharIsReq': 'Aadhar Number is required',
          'validAadhar': 'Enter a Valid Aadhar Number',
          'passReq': 'Passowrd is required',
          'validPass': 'Minimum 6 character password is required',
          'profilePick': 'Profile Pick',
          'submit': 'Submit',
          'staffSection': 'Staff Section',
          'fire': 'Fire',
          'name': 'Name',
          'sortStaff': 'Sort Staff',
          'by': 'By',
          'upiid': 'Upi Id',
          'refDoc': 'Select Reference Doctor',
          'sQualification': 'Select Your Qualification',
          'sBloodGroup': 'Select Your BloodGroup',
          'sortPatient': 'Sort Patient by',
          'payPrnd': 'Payment Pending',
          'payComp': 'Payment Completed',
          'welcome': 'Welcome to',
          'staff': 'Staff',
          'patient': 'Patient',
          'doctor': 'Doctor',
          'bill': 'Bill',
          'home': 'Home',
          'patientDetails': 'Patient Details',
          'staffDetail': 'Staff Detail',
          'doctorDetail': 'Doctor Detail',
          'sortDocBy': 'Sort Doctor by',
          'sortbillby': 'Sort Bill By',
          'twoFactor': 'Two Factor Auth',
          'on': 'ON',
          'off': 'OFF',
          'deviceSupport': 'This Device is Not Supported',

          //medicine data
          'name1': 'Aciclovir (Zovirax)',
          'dieases1':
              "Find  aciclovir treats cold sores, chickenpox, shingles and other herpes virus infections, and how to take it.",
          'name2': 'Acrivastine',
          'dieases2':
              "It's used to treat hay fever, conjunctivitis (red, itchy eyes), eczema and hives (urticaria).",
          'name3': 'Adalimumab',
          'dieases3':
              "It's used to reduce swelling (inflammation) by acting on your immune system",
          'name4': 'Alendronic acid',
          'dieases4':
              "Alendronic acid is a type of medicine called a bisphosphonate. Bisphosponates are prescribed to help your bones stay as strong as possible.",
          'name5': 'Allopurinol',
          'dieases5':
              "Allopurinol is a medicine used to lower levels of uric acid in your blood.",
          'name6': 'Alogliptin',
          'dieases6':
              "Alogliptin is prescribed for people who still have high blood sugar, even though they have a sensible diet and exercise regularly.",
          'name7': 'Amitriptyline for depression',
          'dieases7':
              "Amitriptyline is an antidepressant medicine. It's used to treat low mood and depression.",
          'name8': 'Amitriptyline for pain and migraine',
          'dieases8':
              "Amitriptyline is  used to treat depression. The doses used to treat pain are lower than the doses for depression.",
          'name9': 'Amlodipine',
          'dieases9':
              "Amlodipine treats high blood pressure and helps prevent heart disease",
          'name10': 'Amoxicillin',
          'dieases10':
              "It is used to treat bacterial infections, such as chest infections (including pneumonia) and dental abscesses",
          'name11': 'Anastrozole',
          'dieases11':
              "Anastrozole is a type of hormone treatment. It works by reducing the level of estrogen hormones in your body.",
          'name12': 'Antidepressants',
          'dieases12':
              "It's they work by increasing levels of chemicals in the brain called neurotransmitters. Certain neurotransmitters, such as serotonin and noradrenaline, are linked to mood and emotion.",
          'name13': 'Apixaban',
          'dieases13':
              "It is used to treat people who have health problems due to blood clotting",
          'name14': 'Aripiprazole',
          'dieases14':
              "Aripiprazole is a medicine that helps with mental health conditions such as schizophrenia, where you may see, hear or feel things that are not there",
          'name15': 'Asprin (Acetylsalicylic acid) Tablet 75 mg',
          'dieases15':
              "Analgesics, antipyretics, non-steroidal anti-inflammatorymedicines, medicines used to treat gout and disease modifying agentsused in rheumatoid disorders",

          'name16': 'Activated Charcoal',
          'dieases16': "Anti-dotes and other substances used in poisoning",
          'name17': ' Albendazole Tablet 400 mg',
          'dieases17': "Intestinal Anthelmintics",

          'name18': 'Amoxicillin Capsule 250 mg, ',
          'dieases18': "Anti-bacterial",

          'name19': 'Ascorbic acid (Vitamin C) Tablet 100 mg',
          'dieases19': "Vitamins and minerals",
          'name20': 'Aspirin for pain relief',
          'dieases20':
              "It can also be used to treat colds and flu-like symptoms, and to bring down a high temperature.",
          'name21': 'Low-dose aspirin',
          'dieases21':
              "It's Low-dose aspirin helps to prevent heart attacks and strokes in people who are at high risk of them. Aspirin is also known as acetylsalicylic acid.",
          'name22': 'Atenolol',
          'dieases22':
              "Atenolol is a beta blocker medicine, used to treat high blood pressure (hypertension) and irregular heartbeats (arrhythmia).",
          'name23': 'Atorvastatin',
          'dieases23':
              " It is used to lower cholesterol if you've been diagnosed with high blood cholesterol and prevent heart disease, including heart attacks and strokes.",
          'name24': 'Azathioprine',
          'dieases24':
              "Azathioprine is a type of medicine called an immunosuppressant. Immunosuppressants help to calm or control your body's immune system.",
          'name25': 'Azithromycin',
          'dieases25':
              "Macrolide antibiotics work to kill the bacteria causing the infection and can also be used long-term to prevent chest infections.",
          'name26': 'Baclofen',
          'dieases26':
              "Baclofen tablets are used to relieve muscle spasms, spasms or stiffness caused by conditions if prescribed by a specialist doctor in a hospital.",
          'name27': 'Beclometasone inhalers',
          'dieases27':
              "Beclometasone is a type of medicine known as a steroid (also called a corticosteroid). It's mainly used for asthma, but also sometimes for chronic obstructive pulmonary disease (COPD).",
          'name28': 'Beclometasone nasal spray',
          'dieases28':
              "Beclometasone nasal (nose) spray is used to treat cold-like symptoms caused by allergic rhinitis",
          'name29': 'Beclometasone skin cream',
          'dieases29':
              "Beclometasone cream and ointment are used to treat itching, swollen and irritated skin. ",
          'name30': 'Beclometasone tablets',
          'dieases30':
              "Beclometasone tablets are used to treat ulcerative colitis.They work by reducing swelling (inflammation) in your gut.",
          'name31': 'Bendroflumethiazide',
          'dieases31':
              "It is used to treat high blood pressure (hypertension) and fluid build-up (edema) in your body.",
          'name32': 'Benzoyl peroxide',
          'dieases32':
              "Benzoyl peroxide is used to treat acne. It works as an antiseptic to reduce the number of germs (bacteria) on the surface of your skin.",
          'name33': 'Benzydamine',
          'dieases33':
              "Benzydamine is an NSAID (non-steroidal anti-inflammatory drug) that reduces pain and swelling (inflammation)",
          'name34': 'Betahistine',
          'dieases34':
              "It's to work by reducing build-up of fluid in the inner ear. helps to reduce how often you get Ménière's disease symptoms and to make them milder.",
          'name35': 'Betamethasone for eyes, ears and nose',
          'dieases35':
              "It's also used to treat the inflammation in your outer ear that can be caused by eczema, water or ear plugs.",
          'name36': 'Betamethasone for skin',
          'dieases36':
              "Betamethasone skin treatments are used to treat itching, swollen and irritated skin. They can help with conditions such as eczema, contact dermatitis and psoriasis.",
          'name37': 'Betamethasone tablets',
          'dieases37':
              "Betamethasone works to reduce swelling (inflammation). It also calms your immune system",
          'name38': 'Bimatoprost',
          'dieases38':
              "Bimatoprost is a medicine that treats high pressure in the eye (ocular hypertension) and helps with glaucoma.",
          'name39': 'Bisacodyl',
          'dieases39':
              "Bisacodyl is a laxative. This type of medicine can help you empty your bowels if you have constipation (difficulty pooing).",
          'name40': 'Bisoprolol',
          'dieases40':
              "Bisoprolol If you have high blood pressure, taking Bisoprolol helps prevent future heart attacks, heart attacks and strokes.",
          'name41': 'Brinzolamide',
          'dieases41':
              "Brinzolamide is a medicine that treats high pressure inside the eye (ocular hypertension) and helps with glaucoma.",
          'name42': 'Budesonide inhalers',
          'dieases42':
              "Budesonide inhalers are a steroid medicine that's used for asthma and chronic obstructive pulmonary disease (COPD).",
          'name43': 'Budesonide nasal spray',
          'dieases43':
              "Budesonide nasal (nose) spray is used to treat cold-like symptoms caused by allergic rhinitis",
          'name44': 'Budesonide rectal foam and enemas',
          'dieases44':
              "Budesonide rectal foam and enemas are used to treat ulcerative colitis",
          'name45': 'Budesonide tablets, capsules and granules',
          'dieases45':
              "Budesonide is used to reduce swelling (inflammation), which helps to control symptoms of some conditions.",
          'name46': 'Bumetanide',
          'dieases46':
              "It's used to treat heart failure and the build up of fluid in your body (oedema).",
          'name47': 'Buprenorphine for pain',
          'dieases47':
              " It's mainly used to treat moderate to severe pain, for example during or after an operation or a serious injury, or pain from cancer.",
          'name48': 'Buscopan (hyoscine butylbromide)',
          'dieases48':
              "Buscopan relieves painful stomach cramps, including those linked with irritable bowel syndrome (IBS).",
          'name49': 'Calcipotriol',
          'dieases49':
              "Calcipotriol is used to treat plaque psoriasis, a skin problem where your body produces too many skin cells, causing patches of dry, itchy, scaly skin (plaques).",
          'name50': 'Candesartan',
          'dieases50':
              "It helps to prevent future strokes, heart attacks and kidney problems. It also improves your survival if you're taking it for heart failure.",
          'name51': 'Carbamazepine',
          'dieases51':
              "It can also be taken for nerve pain caused by diabetes (peripheral neuropathy) or if you have a painful condition of the face called trigeminal neuralgia.",
          'name52': 'Carbimazole',
          'dieases52':
              "Carbimazole is a medicine used to treat an overactive thyroid (hyperthyroidism). This is when your thyroid gland makes too many thyroid hormones.",
          'name53': 'Carbocisteine',
          'dieases53':
              "Carbocisteine is a type of medicine called a mucolytic.",
          'name54': 'Carmellose sodium',
          'dieases54':
              "Carmellose sodium is a lubricant used to treat dry eyes. It comes as eye drops that work like artificial tears",
          'name55': 'Carvedilol',
          'dieases55':
              "It can also be given with other medicines to treat heart failure and to prevent chest pain caused by angina.",
          'name56': 'Cefalexin',
          'dieases56':
              "Cefalexin is an antibiotic.It belongs to a group of antibiotics called cephalosporins.",
          'name57': 'Cetirizine',
          'dieases57':
              "Cetirizine is known as a non-drowsy antihistamine. It's much less likely to make you feel sleepy than some other antihistamines.",
          'name58': 'Champix (varenicline)',
          'dieases58':
              "Champix (also called varenicline) is not currently available in the UK or Europe.",
          'name59': 'Chloramphenicol',
          'dieases59':
              "It's mainly used to treat eye infections (such as conjunctivitis) and sometimes ear infections.",
          'name60': 'Chlorhexidine',
          'dieases60':
              "Chlorhexidine is an antiseptic and disinfectant. It helps reduce the number of germs (bacteria) in your mouth or on your skin.",
          'name61': 'Chlorphenamine (Piriton)',
          'dieases61':
              "Chlorphenamine is an antihistamine medicine that relieves the symptoms of allergies.",
          'name62': 'Cinnarizine',
          'dieases62':
              "Cinnarizine is an antihistamine that stops you from feeling sick or feeling sick, such as nausea or vomiting.",
          'name63': 'Ciprofloxacin',
          'dieases63': "it's used to treat a number of bacterial infections",
          'name64': 'Citalopram',
          'dieases64':
              "It's often used to treat low mood (depression) and also sometimes for panic attacks.",
          'name65': 'Clarithromycin',
          'dieases65':
              "It's used to treat chest infections such as pneumonia, skin problems such as cellulitis, and ear infections.",
          'name66': 'Clobetasol',
          'dieases66':
              "Clobetasol is a steroid medicine that's used on the skin to treat swelling, itching and irritation",
          'name67': 'Clobetasone',
          'dieases67':
              "Clobetasone (also known as clobetasone butyrate) is a steroid medicine used on the skin to treat swelling, itching and irritation.",
          'name68': 'Clonazepam',
          'dieases68':
              "It's used to control seizures or fits due to epilepsy, involuntary muscle spasms, panic disorder and sometimes restless legs syndrome.",
          'name69': 'Clonidine',
          'dieases69':
              "It helps to relax and widen blood vessels in the heart so blood can pass through them more easily.",
          'name70': 'Clopidogrel',
          'dieases70':
              "It prevents platelets (a type of blood cell) from sticking together and forming a dangerous blood clot.",
          'name71': 'Clotrimazole cream, spray and solution',
          'dieases71':
              "Clotrimazole is an antifungal medicine. It's used to treat skin infections caused by a fungus (yeast).",
          'name72': 'Clotrimazole for thrush (Canesten)',
          'dieases72':
              "It's used to treat yeast infections, including thrush in men and women, although thrush is more common in women.",
          'name73': 'Co-amoxiclav',
          'dieases73':
              "Co-amoxiclav is an antibiotic used for bacterial infections.",
          'name74': 'Co-beneldopa',
          'dieases74':
              "It can help with shaking (tremors), slowness and stiffness",
          'name75': 'Co-careldopa',
          'dieases75':
              "Co-careldopa works by making it easier for your brain to send messages to your muscles again.",
          'name76': 'Co-codamol for adults',
          'dieases76':
              "It's used to treat aches and pains including headaches, muscle pain, migraines and toothache for adults",
          'name77': 'Co-codamol for children',
          'dieases77':
              "It's used to treat aches and pains including headaches, muscle pain, migraines and toothache for children",
          'name78': 'Co-codaprin (aspirin and codeine)',
          'dieases78':
              "It can also be used to treat the symptoms of colds and flu.",
          'name79': 'Co-dydramol',
          'dieases79':
              "It's used Paracetamol and dihydrocodeine work by blocking messengers in the nerves and brain that tell your body that you're in pain.",
          'name80': 'Coal tar',
          'dieases80':
              "Coal tar is a medicine that's used on the skin and scalp to treat itching, irritation and dry patches (scaling and flaking)",
          'name81': 'Codeine',
          'dieases81':
              "It's used to treat pain, for example, after an operation or an injury",
          'name82': 'Colchicine',
          'dieases82':
              "Colchicine is a medicine for treating inflammation and pain.",
          'name83': 'Colecalciferol',
          'dieases83':
              "Cholecalciferol is a form of vitamin D. It helps your body absorb more calcium and phosphorus from the food you eat",
          'name84':
              'Continuous combined hormone replacement therapy (HRT) tablets, capsules and patches',
          'dieases84':
              "It can also prevent weakening bones (oesteoporosis) which is common after the menopause.",
          'name85': 'Contraceptive injections (medroxyprogesterone)',
          'dieases85':
              "Medroxyprogesterone injections are used as contraception",
          'name86': 'Cyanocobalamin',
          'dieases86':
              " It's used to treat and prevent vitamin B12 deficiency anaemia (when you have low levels of this vitamin in your body).",
          'name87': 'Cyclizine',
          'dieases87':
              "It's an antihistamine that is used to help stop you feeling or being sick (nausea or vomiting).",
          'name88': 'Dabigatran',
          'dieases88':
              "It makes your blood flow through your veins more easily. This means your blood will be less likely to make a dangerous blood clot.",
          'name89': 'Dapagliflozin',
          'dieases89':
              "It can also be used to treat heart failure and chronic kidney disease (CKD).",
          'name90': 'Dexamethasone eye drops',
          'dieases90':
              "They're used to treat eye inflammation by reducing swelling, redness and irritation",
          'name91': 'Dexamethasone tablets and liquid',
          'dieases91':
              "It can also help reduce the side effects of cancer treatment, or some of your symptoms if you're having end of life care.",
          'name92': 'Diazepam',
          'dieases92':
              "It's used to treat anxiety, muscle spasms and seizures or fits",
          'name93': 'Diclofenac',
          'dieases93':
              "It's used to treat aches and pains, as well as problems with joints, muscles and bones",
          'name94': 'Digoxin',
          'dieases94':
              "It's used to control some heart problems, such as irregular heartbeats (arrhythmias) including atrial fibrillation.",
          'name95': 'Dihydrocodeine',
          'dieases95':
              "It's used to treat moderate to severe pain, such as after an operation or a serious injury.",
          'name96': 'Diltiazem',
          'dieases96':
              "It works by lowering your blood pressure and making it easier for your heart to pump blood around your body.",
          'name97': 'Diphenhydramine',
          'dieases97':
              "It's known as a drowsy (sedating) antihistamine and is more likely to make you feel sleepy than other antihistamines. ",
          'name98': 'Dipyridamole',
          'dieases98':
              "It prevents a type of blood cell (platelets) sticking together and forming a dangerous blood clot.",
          'name99': 'Docusate',
          'dieases99':
              "It helps to soften your poo and makes your bowel movements easier if you have problems pooing (constipation).",
          'name100': 'Domperidone',
          'dieases100':
              "It works by causing the muscles at the top of your stomach to tighten and the muscles at the bottom of your stomach to relax",
          'name101': 'Donepezil',
          'dieases101':
              "It does not cure dementia. However, it treats some of the symptoms of Alzheimer's disease, Parkinson's disease and dementia with Lewy bodies.",
          'name102': 'Dosulepin',
          'dieases102':
              "Dosulepin is an antidepressant medicine that is used to treat depression.",
          'name103': 'Doxazosin',
          'dieases103':
              "It's used to treat high blood pressure (hypertension) and symptoms of an enlarged prostate (benign prostatic enlargement).",
          'name104': 'Doxycycline',
          'dieases104':
              "It can also be used to prevent malaria if you're travelling abroad.",
          'name105': 'Duloxetine',
          'dieases105':
              "It's also used to treat nerve pain, such as fibromyalgia, and can be used to treat stress urinary incontinence in women.",
          'name106': 'Edoxaban',
          'dieases106':
              "It makes your blood flow through your veins more easily.",
          'name107': 'Empagliflozin',
          'dieases107':
              "It can also be taken together with other diabetes medicines, such as insulin, if a single diabetes medicine is not controlling your blood sugar properly.",
          'name108': 'Enalapril',
          'dieases108':
              "If you have high blood pressure, taking enalapril will help prevent a future heart attack or stroke.",
          'name109': 'Eplerenone',
          'dieases109':
              "It helps to keep your symptoms of heart failure under control and reduce the risk of your heart getting weaker ",
          'name110': 'Erythromycin',
          'dieases110':
              "It's widely used to treat chest infections, such as pneumonia, skin conditions, such as acne and rosacea, dental abscesses, and sexually transmitted infections.",
          'name111': 'Escitalopram',
          'dieases111':
              "It's often used to treat depression and is sometimes used for anxiety, obsessive compulsive disorder (OCD) or panic attacks.",
          'name112': 'Esomeprazole',
          'dieases112':
              "Esomeprazole reduces the amount of acid your stomach makes.",
          'name113': 'Ezetimibe',
          'dieases113': "Ezetimibe is used to treat high blood cholesterol.",
          'name114': 'Felodipine',
          'dieases114':
              "Felodipine is a calcium channel blocker used to treat high blood pressure (hypertension).",

          'name115': 'Fentanyl',
          'dieases115':
              "It works by blocking pain signals between the brain and the rest of the body. ",
          'name116': 'Ferrous fumarate',
          'dieases116':
              "Ferrous fumarate is a type of iron that's used as a medicine to treat and prevent iron deficiency anaemia.",
          'name117': 'Ferrous sulfate',
          'dieases117':
              "errous sulfate (or sulphate) is a type of iron that's used as a medicine to treat and prevent iron deficiency anaemia.",
          'name118': 'Fexofenadine',
          'dieases118':
              "Fexofenadine is an antihistamine medicine that helps with the symptoms of allergies",
          'name119': 'Finasteride',
          'dieases119':
              "Finasteride is used to treat an enlarged prostate (benign prostate enlargement). It can help ease your symptoms",
          'name120': 'Flucloxacillin',
          'dieases120':
              "It's used to treat skin and wound infections bone infections (osteomyelitis)ear infections in children",
          'name121': 'Fluconazole',
          'dieases121':
              "Fluconazole is an antifungal medicine. It's used to treat infections caused by different kinds of fungus",
          'name122': 'Fluoxetine (Prozac)',
          'dieases122':
              "It's often used to treat depression, and sometimes obsessive compulsive disorder and bulimia",
          'name123': 'Fluticasone inhalers',
          'dieases123':
              "Inhaled fluticasone is a medicine used for asthma and chronic obstructive pulmonary disease (COPD)",
          'name124': 'Fluticasone nasal spray and drops',
          'dieases124':
              "It works by reducing the swelling and irritation inside the nose",
          'name125': 'Fluticasone skin creams',
          'dieases125':
              "Fluticasone is a type of medicine known as a steroid (also called a corticosteroid).",
          'name126': 'Folic acid',
          'dieases126':
              "Folic acid is the synthetic version of the vitamin folate, also known as vitamin B9.",
          'name127': 'Furosemide',
          'dieases127':
              " It's used to treat high blood pressure (hypertension), heart failure and a build up of fluid in the body (oedema).",
          'name128': 'Fusidic acid',
          'dieases128':
              "It's used to treat bacterial infections, such as skin infections including cellulitis and impetigo, and eye infections including conjunctivitis (red, itchy eyes).",
          'name129': 'Fybogel (ispaghula husk)',
          'dieases129':
              "Ispaghula husk is a laxative taken to treat constipation (difficulty pooing).",
          'name130': 'Gabapentin',
          'dieases130':
              "It's also taken for nerve pain, which can be caused by different conditions, including diabetes and shingles.",
          'name131': 'Gaviscon (alginic acid)',
          'dieases131':
              "Gaviscon can be used to treat heartburn (acid reflux) and indigestion",
          'name132': 'Gliclazide',
          'dieases132':
              "It's a medicine known as a sulfonylurea. Sulfonylureas increase the amount of insulin your pancreas makes. This lowers your blood sugar.",
          'name133': 'Glimepiride',
          'dieases133':
              "Glimepiride lowers your blood sugar by increasing the amount of insulin your body produces.",
          'name134': 'Glyceryl trinitrate (GTN)',
          'dieases134':
              "It's used to prevent and treat chest pain caused by angina.",
          'name135': 'Haloperidol',
          'dieases135':
              "Haloperidol is a medicine that helps with mental health conditions ",
          'name136': 'Heparinoid',
          'dieases136':
              "Heparinoid is a medicine that helps to prevent small blood clots from forming and reduces the swelling of the veins just under your skin.",
          'name137': 'Hormone replacement therapy (HRT)',
          'dieases137':
              "Hormone replacement therapy (HRT) is a treatment used to help menopause symptoms.",
          'name138': 'Hydrocortisone',
          'dieases138':
              "It can also be used as hormone replacement for people who do not have enough of the natural stress hormone, cortisol.",
          'name139': 'Hydrocortisone buccal tablets',
          'dieases139':
              "Hydrocortisone buccal tablets relieve the soreness of mouth ulcers and speed up healing.",
          'name140': 'Hydrocortisone for piles and itchy bottom',
          'dieases140':
              "haemorrhoids nside or around your bottom (anus) itchy bottom These treatments do not cure piles, but they can help with the pain and itching.",
          'name141': 'Hydrocortisone for skin',
          'dieases141':
              "Inflammation They can help with eczema, psoriasis, contact, dermatitis, heat, rash (prickly heat), insect, bite and sting nappy rash.",
          'name142': 'Hydrocortisone injections',
          'dieases142':
              "Hydrocortisone injections, also called corticosteroid injections, are used to treat swollen or painful joints, or muscle pain.",
          'name143': 'Hydroxocobalamin',
          'dieases143':
              "It's used to treat and prevent vitamin B12 deficiency anaemia, where you have low levels of this vitamin in your body.",
          'name144': 'Hydrocortisone tablets',
          'dieases144':
              "Hydrocortisone tablets work as a hormone replacement for a natural hormone called cortisol.",
          'name145': 'Hydroxychloroquine',
          'dieases145':
              "Hydroxychloroquine is a type of medicine called a disease-modifying anti-rheumatic drug (DMARD). It works by blocking the effects of the chemicals released ",
          'name146': 'Hyoscine hydrobromide (Kwells and Joy-Rides)',
          'dieases146':
              "It's  work by affecting your inner ear and your brain to control vomiting. ",
          'name147': 'Ibuprofen and codeine',
          'dieases147':
              "It's used to treat a range of aches and pains, including:",
          'name148': 'Ibuprofen for adults (Nurofen)',
          'dieases148':
              "Ibuprofen is an everyday painkiller for a range of aches and pains, including back pain, period pain, toothache and symptoms of colds, flu or coronavirus (COVID-19). ",
          'name149': 'Ibuprofen for children',
          'dieases149':
              "It's often used to treat symptoms of conditions such as colds, flu and coronavirus (COVID-19), teething, toothache, headaches, sore throat and pain from ear infections.",
          'name150': 'Indapamide',
          'dieases150':
              "Indapamide is used to treat high blood pressure (hypertension)",
          'name151': 'Irbesartan',
          'dieases151':
              "Irbesartan is an angiotensin receptor blocker (ARB) medicine widely used to treat high blood pressure (hypertension)",
          'name152': 'Isosorbide mononitrate and isosorbide dinitrate',
          'dieases152':
              "They are used to prevent angina symptoms (chest pain), they do not work to treat a current angina attack.",
          'name153': 'Isotretinoin capsules (Roaccutane)',
          'dieases153':
              "Isotretinoin capsules medicine can have serious side effects, including side effects that can affect your mental health and sexual health",
          'name154': 'Ketoconazole',
          'dieases154':
              "It's used to treat skin infections caused by a fungus (yeast). ",
          'name155': 'Labetalol',
          'dieases155':
              "Labetalol is a beta blocker medicine, used to treat high blood pressure (hypertension), including high blood pressure in pregnancy.",
          'name156': 'Lactulose',
          'dieases156':
              "Lactulose is a laxative taken to treat constipation (difficulty pooing).",
          'name157': 'Lamotrigine',
          'dieases157':
              "Lamotrigine is a medicine used to treat epilepsy. It can also help prevent low mood (depression) in adults with bipolar disorder.",
          'name158': 'Lansoprazole',
          'dieases158':
              "Lansoprazole reduces the amount of acid your stomach makes. It's used for indigestion, heartburn, acid reflux and gastroesophageal-reflux-disease (GORD). ",
          'name159': 'Latanoprost',
          'dieases159':
              "Latanoprost is a prostaglandin analogue medicine that treats high pressure inside the eye and helps treat glaucoma.",
          'name160': 'Lercanidipine',
          'dieases160':
              "Lercanidipine is a calcium channel blocker medicine used to treat high blood pressure (hypertension)",
          'name161': 'Letrozole',
          'dieases161':
              "Letrozole is a medicine used to treat breast cancer and help to prevent breast cancer coming back.",
          'name162': 'Levetiracetam',
          'dieases162':
              "Levetiracetam is a medicine used to treat epilepsy.Seizures are bursts of electrical activity in the brain that temporarily affect how it works.",
          'name163': 'Levothyroxine',
          'dieases163':
              "Levothyroxine is a medicine used to treat an underactive thyroid gland (hypothyroidism).",
          'name164': 'Lidocaine for mouth and throat',
          'dieases164':
              "Lidocaine is a local anaesthetic that numbs the area where you use it. It's used in some medicines to treat",
          'name165': 'Lidocaine for piles and itchy bottom',
          'dieases165':
              "Lidocaine is a local anaesthetic that numbs the area where you use it. It's used in some medicines to treat",
          'name166': 'Lidocaine skin cream',
          'dieases166':
              " It works by stopping nerves from sending pain signals to your brain.",
          'name167': 'Linagliptin',
          'dieases167':
              "It works by increasing the amount of insulin that your body makes. ",
          'name168': 'Lisinopril',
          'dieases168':
              "Lisinopril is a medicine to treat high blood pressure (hypertension) and heart failure.",
          'name169': 'Lithium',
          'dieases169':
              "Lithium is a type of medicine known as a mood stabiliser. It's used to treat mood disorders",
          'name170': 'Loperamide',
          'dieases170':
              "Loperamide is a medicine to treat diarrhoea (runny poo). It can help with short-term diarrhoea or irritable bowel syndrome (IBS).",
          'name171': 'Loratadine (Clarityn)',
          'dieases171':
              "Loratadine is an antihistamine medicine that helps with the symptoms of allergies. It's used to treat",
          'name172': 'Lorazepam',
          'dieases172':
              "It's used to treat anxiety and sleeping problems that are related to anxiety.",
          'name173': 'Losartan',
          'dieases173':
              "It's widely used to treat high blood pressure (hypertension) and heart failure.",
          'name174': 'Low-dose aspirin',
          'dieases174':
              "Low-dose aspirin helps to prevent heart attacks and strokes in people who are at high risk of them",
          'name175': 'Lymecycline',
          'dieases175': "It's also used to treat infections",

          'name176': 'Macrogol',
          'dieases176':
              "Macrogol (or macrogols) is a laxative taken to treat constipation (difficulty pooing).",
          'name177': 'Mebendazole',
          'dieases177':
              "It's used mainly for infections of the gut such as threadworms (sometimes known as pinworms) and other less common worm infections (whipworm, roundworm and hookworm)",
          'name178': 'Mebeverine',
          'dieases178':
              "Mebeverine (sometimes called mebeverine hydrochloride) is a type of medicine known as an antispasmodic. It helps with muscle spasms.",
          'name179': 'Medroxyprogesterone tablets',
          'dieases179':
              "It's used for hormonal conditions, including heavy periods, endometriosis, polycystic ovary syndrome (PCOS) and symptoms of the menopause.",
          'name180': 'Memantine',
          'dieases180':
              "It is used to treat memory loss which is one of the main symptoms of dementia.",
          'name181': 'Mesalazine',
          'dieases181':
              "Mesalazine is used to treat ulcerative colitis and Crohn's disease and other types of inflammatory bowel disease.",
          'name182': 'Metformin',
          'dieases182':
              "it's Metformin lowers your blood sugar levels by improving the way your body handles insulin.",
          'name183': 'Methadone',
          'dieases183':
              "It reduces your withdrawal symptoms, such as shaking, shivering and other flu-like symptoms. It also helps stop cravings.",
          'name184': 'Methotrexate',
          'dieases184':
              " It slows down your body's immune system and helps reduce swelling (inflammation).",
          'name185': 'Methylphenidate for adults',
          'dieases185':
              "Methylphenidate is used to treat attention deficit hyperactivity disorder (ADHD).",
          'name186': 'Methylphenidate for children',
          'dieases186':
              "Methylphenidate belongs to a group of medicines, called stimulants. They work by increasing activity in the brain",
          'name187': 'Metoclopramide',
          'dieases187':
              "It's used to help stop you feeling or being sick (nausea or vomiting) including",
          'name188': 'Metoprolol',
          'dieases188':
              "You'll usually take it together with other medicines to treat your symptoms",
          'name189': 'Metronidazole',
          'dieases189':
              "It's used to treat skin infections, rosacea and mouth infections, including infected gums and dental abscesses. ",
          'name190': 'Mirabegron',
          'dieases190':
              "Mirabegron is a medicine that eases the symptoms of an overactive bladder",
          'name191': 'Mirtazapine',
          'dieases191':
              "It's used to treat depression and sometimes obsessive compulsive disorder (OCD) and anxiety.",
          'name192': 'Molnupiravir (Lagevrio)',
          'dieases192':
              "Molnupiravir is an antiviral medicine that works by stopping the virus that causes COVID-19 from growing and spreading.",
          'name193': 'Mometasone for skin',
          'dieases193':
              "Mometasone is used to treat itchy, swollen, and inflamed skin.",
          'name194': 'Mometasone inhalers',
          'dieases194':
              "It's called a preventer inhaler because it helps prevent you from getting symptoms.",
          'name195': 'Mometasone nasal spray',
          'dieases195':
              "Mometasone nasal (nose) spray is used to treat cold-like symptoms caused by allergic rhinitis.",
          'name196': 'Montelukast',
          'dieases196':
              "It's usually prescribed when asthma is mild and can stop it from getting worse.",
          'name197': 'Morphine',
          'dieases197':
              "It's used to treat severe pain, for example after an operation or a serious injury, or pain from cancer or a heart attack.",
          'name198': 'Naproxen',
          'dieases198':
              "Naproxen is a non-steroidal anti-inflammatory drug (NSAID). It reduces swelling (inflammation) and pain in joints and muscles.",
          'name199': 'Nefopam',
          'dieases199':
              'It treats moderate pain, for example after an operation or a serious injury, dental pain, joint pain and muscle pain, or pain from cancer.',
          'name200': 'Nicorandil',
          'dieases200':
              "Nicorandil is a medicine used to treat and reduce chest pain caused by angina.",
          'name201': 'Nifedipine',
          'dieases201':
              "Nifedipine is a calcium channel blocker medicine used to treat high blood pressure (hypertension).",
          'name202': 'Nitrofurantoin',
          'dieases202':
              "It's used to treat and prevent lower urinary tract infections (UTIs), such as cystitis.",
          'name203': 'Nortriptyline',
          'dieases203':
              "it's also used to treat depression and bedwetting in children (nocturnal enuresis) .",
          'name204': 'Nystatin',
          'dieases204':
              "It's used to treat or prevent infections caused by a fungus or yeast",
          'name205': 'Oestrogen tablets, patches, gel and spray',
          'dieases205':
              "It's used to treat symptoms of the menopause. It also helps prevent weakening bones (osteoporosis) which is common after the menopause.",
          'name206': 'Olanzapine',
          'dieases206':
              "Olanzapine helps to manage symptoms of mental health conditions ",
          'name207': 'Olmesartan',
          'dieases207':
              "It lowers your blood pressure and makes it easier for your heart to pump blood around your body.",
          'name208': 'Omeprazole',
          'dieases208':
              "It's widely used to treat indigestion and heartburn, and acid reflux.",
          'name209': ' Oxygen gas for inhalation',
          'dieases209': "Anesthetics Agent",

          'name210': 'Oxybutynin',
          'dieases210':
              "Oxybutynin is a medicine used to treat symptoms of an overactive bladder",
          'name211': 'Oxycodone',
          'dieases211':
              "It's used to treat severe pain, for example after an operation or a serious injury, or pain from cancer.",
          'name212': 'Pantoprazole',
          'dieases212':
              "It's used for heartburn, acid reflux and gastro-oesophageal reflux disease (GORD)",
          'name213': 'Paracetamol for adults',
          'dieases213':
              "Paracetamol is a common painkiller used to treat aches and pain. It can also be used to reduce a high temperature.",
          'name214': 'Paracetamol for children (Calpol)',
          'dieases214':
              "It's often used to treat headaches, stomach ache, earache, and cold symptoms.",
          'name215': 'Paroxetine',
          'dieases215':
              "It's often used to treat depression, and sometimes obsessive compulsive disorder (OCD), panic attacks, anxiety or post-traumatic stress disorder (PTSD).",
          'name216': 'Paxlovid',
          'dieases216':
              "It's used to treat early COVID-19 infection and help to prevent more severe symptoms",
          'name217': 'Peppermint oil',
          'dieases217':
              "It helps relieve stomach cramps, bloating and farting (flatulence), particularly if you have irritable bowel syndrome (IBS).",
          'name218': 'Pepto-Bismol (bismuth subsalicylate)',
          'dieases218':
              "This medicine is used for heartburn and acid reflux, indigestion, diarrhoea and feeling sick (nausea).",
          'name219': 'Perindopril',
          'dieases219':
              "Perindopril is a medicine used to treat high blood pressure (hypertension) and heart failure",
          'name220': 'Phenoxymethylpenicillin',
          'dieases220':
              "It's used to treat bacterial infections, including ear, chest, throat and skin infections.",
          'name221': 'Phenytoin',
          'dieases221':
              "Phenytoin can help to relieve nerve pain by slowing down electrical impulses in the nerves and reducing their ability to transmit pain.",
          'name222': 'Pioglitazone',
          'dieases222':
              "Pioglitazone helps to control your blood sugar levels by helping your body make better use of the insulin it produces.",
          'name223': 'Pravastatin',
          'dieases223':
              "Pravastatin is used to lower cholesterol if you've been diagnosed with high blood cholesterol.",
          'name224': 'Pre-Exposure Prophylaxis (PrEP)',
          'dieases224':
              "Pre-Exposure Prophylaxis (PrEP) is used to reduce the risk of getting HIV (human immunodeficiency virus).",
          'name225': 'Prednisolone tablets and liquid',
          'dieases225':
              "It helps by reducing swelling (inflammation) and can also calm down your immune system. ",
          'name226': 'Pregabalin',
          'dieases226':
              "Pregabalin is used to treat epilepsy and anxiety It's also taken to treat nerve pain.",
          'name227': 'Prochlorperazine',
          'dieases227':
              "Prochlorperazine is an anti-sickness medicine. It can help stop you feeling or being sick (nausea or vomiting).",
          'name228': 'Utrogestan (micronised progesterone)',
          'dieases228':
              "Utrogestan (micronised progesterone) is a medicine that contains a hormone called progesterone. Progesterone is a type of progestogen that's identical to the hormone your body produces.",
          'name229': 'Promethazine (Phenergan)',
          'dieases229':
              "It's known as a drowsy (sedating) antihistamine, so it's more likely to make you feel sleepy than other antihistamines.",
          'name230': 'Propranolol',
          'dieases230':
              "It's used to treat heart problems, help with some of the symptoms of anxiety and prevent migraines.",
          'name231': 'Pseudoephedrine (Sudafed)',
          'dieases231':
              "Pseudoephedrine is a decongestant that helps you breathe more easily if your nose is stuffy or blocked (nasal congestion). ",
          'name232': 'Quetiapine',
          'dieases232':
              "Quetiapine is a medicine that helps with mental health conditions",
          'name233': 'Rabeprazole',
          'dieases233':
              "Rabeprazole reduces the amount of acid your stomach makes. It's widely used to treat heartburn, acid reflux and gastro-oesophageal reflux disease (GORD)",
          'name234': 'Ramipril',
          'dieases234':
              "Ramipril is a medicine widely used to treat high blood pressure (hypertension) and heart failure",
          'name235': 'Remdesivir (Veklury)',
          'dieases235':
              "It's used to treat early COVID-19 infection and help to prevent more severe symptoms.",
          'name236': 'Risedronate',
          'dieases236':
              "It can help if you have or are at risk of getting a health condition called osteoporosis.",
          'name237': 'Risperidone',
          'dieases237':
              "Risperidone is medicine that helps with symptoms of some mental health conditions",
          'name238': 'Rivaroxaban',
          'dieases238':
              "It makes your blood flow through your veins more easily. This means your blood will be less likely to make a dangerous blood clot.",
          'name239': 'Ropinirole',
          'dieases239':
              "It is used to treat the symptoms of Parkinson's disease and restless legs syndrome.",
          'name240': 'Rosuvastatin',
          'dieases240':
              "Rosuvastatin belongs to a group of medicines called statins. It works by working on the liver to stop it making cholesterol.",
          'name241': 'Salbutamol inhaler',
          'dieases241':
              "Salbutamol is used to relieve symptoms of asthma and chronic obstructive pulmonary disease (COPD) such as coughing, wheezing and feeling breathless",
          'name242': 'saxagliptin',
          'dieases242':
              "The body doesn't make enough insulin, or the insulin it does make doesn't work properly. This can lead to high blood sugar levels (hyperglycemia).",
          'name243': 'Senna',
          'dieases243':
              "It's used to treat difficulty pooing (constipation). It works by stimulating the muscles in your gut.",
          'name244':
              'Sequential combined hormone replacement therapy (HRT) tablets and patches',
          'dieases244':
              "Sequential combined hormone replacement therapy (HRT) is a medicine that contains the hormones oestrogen and progestogen. It's used to treat menopause symptoms.",
          'name245': 'Sertraline',
          'dieases245':
              "It's often used to treat depression, and also sometimes panic attacks, obsessive compulsive disorder (OCD) and post-traumatic stress disorder (PTSD).",
          'name246': 'Sildenafil (Viagra)',
          'dieases246':
              "Sildenafil is also sometimes used to treat pulmonary hypertension (high blood pressure in the blood vessels that supply the lungs).",
          'name247': 'Simeticone',
          'dieases247':
              "It's used to treat farting (flatulence), trapped wind and bloating, although we cannot be certain if it really works for these symptoms.",
          'name248': 'Simvastatin',
          'dieases248':
              "Simvastatin is used to lower cholesterol if you've been diagnosed with high blood cholesterol.",
          'name249': 'Sodium cromoglicate capsules',
          'dieases249':
              "Sodium cromoglicate capsules are part of a group of medicines called anti-allergics. They are used to treat allergic reactions to food",
          'name250': 'Sodium cromoglicate eye drops',
          'dieases250':
              "They are used to treat allergic conjunctivitis, a condition triggered by hay fever, house mites and other allergies. ",
          'name251': 'Sodium valproate',
          'dieases251':
              'Sodium valproate is used to treat epilepsy and bipolar disorder.',
          'name252': 'Solifenacin',
          'dieases252':
              "Solifenacin is a medicine used to treat symptoms of an overactive bladder. ",

          'name253': 'Sotalol',
          'dieases253':
              "It's used to treat atrial fibrillation and other conditions that cause an irregular heartbeat (arrhythmia).",
          'name254': 'Sotrovimab (Xevudy)',
          'dieases254':
              "Sotrovimab is a biological medicine. It's also known as a neutralising monoclonal antibody (nMAb). It's used to treat COVID-19",
          'name255': 'Spironolactone',
          'dieases255':
              "Spironolactone is a type of medicine called a diuretic. These medicines are sometimes called 'water tablets' because they make you pee more.",
          'name256': 'Sulfasalazine',
          'dieases256':
              "Sulfasalazine is used to treat ulcerative colitis and Crohn's disease, and other types of inflammatory bowel disease.",
          'name257': 'Sumatriptan',
          'dieases257':
              "Sumatriptan is a medicine to treat migraines and cluster headaches. It does not prevent these conditions.",
          'name258': 'Tadalafil',
          'dieases258':
              "It's also sometimes used to treat pulmonary hypertension (high blood pressure in the blood vessels that supply the lungs).",
          'name259': 'Tamsulosin',
          'dieases259':
              "It's used to treat men with symptoms of an enlarged prostate (benign prostate enlargement). It's also occasionally taken to treat kidney stones and prostatitis.",
          'name260': 'Temazepam',
          'dieases260': "It's used to treat sleeping problems (insomnia).",
          'name261': 'Terbinafine',
          'dieases261':
              "It's used to treat skin infections caused by a fungus (yeast), including:",
          'name262': 'Thiamine (vitamin B1)',
          'dieases262':
              "Thiamine helps to turn food into energy and to keep the nervous system healthy",
          'name263': 'Tibolone',
          'dieases263':
              "Tibolone helps to improve menopause symptoms, such as hot flushes, low mood and vaginal dryness or irritation",
          'name264': 'Ticagrelor',
          'dieases264':
              "Taking ticagrelor can help prevent blood clots if you have an increased risk of having them.",

          'name265': 'Timolol eye drops',
          'dieases265':
              "Increased pressure inside your eye can damage your optic nerve. This can cause vision loss or blindness.",

          'name266': 'Timolol tablets',
          'dieases266':
              "If you have high blood pressure, taking timolol can help to prevent future heart disease, or heart attacks.",

          'name267': 'Tiotropium inhalers',
          'dieases267':
              "Tiotropium inhalers are used to prevent symptoms of chronic obstructive pulmonary disease (COPD) and sometimes asthma, such as coughing, wheezing and feeling breathless.",

          'name268': 'tiotropium inhalers',
          'dieases268':
              " It works by relaxing muscles in your lungs and widening your airways. This makes it easier for you to breathe.",

          'name269': 'Tolterodine',
          'dieases269':
              "It's also used to treat bedwetting in children (nocturnal enuresis).",

          'name270': 'Topiramate',
          'dieases270':
              "Topiramate is a medicine used to treat epilepsy. These are also called anti-epileptic medicines.",

          'name271': 'Tramadol',
          'dieases271':
              "It's used to treat moderate to severe pain, for example after an operation or a serious injury.",

          'name272': 'Tranexamic acid',
          'dieases272':
              "It helps your blood to clot and is used for nosebleeds and heavy periods.",

          'name273': 'Trastuzumab (Herceptin)',
          'dieases273':
              "It's used to treat some types of cancer including breast cancer in women, breast cancer in men, oesophageal cancer and stomach cancer.",

          'name274': 'Trazodone',
          'dieases274':
              "It's used to treat depression, anxiety, or a combination of depression and anxiety.",
          'name275': 'Trimethoprim',
          'dieases275':
              "It's used to treat and prevent urinary tract infections (UTIs), such as cystitis.",

          'name276': 'Utrogestan (micronised progesterone)',
          'dieases276':
              "Utrogestan (micronised progesterone) is a medicine that contains a hormone called progesterone. Progesterone is a type of progestogen that's identical to the hormone your body produces",

          'name277': 'Vaginal oestrogen',
          'dieases277':
              "It's used to treat the vaginal dryness and irritation that can happen during the menopause.",

          'name278': 'Valproic acid',
          'dieases278':
              "Valproic acid is usually used to treat bipolar disorder It can also be used to prevent migraine.",

          'name279': 'Valsartan',
          'dieases279':
              "This lowers your blood pressure and makes it easier for your heart to pump blood around your body.",

          'name280': 'Champix (varenicline)',
          'dieases280':
              "It may be unavailable long-term. It's not yet known whether it will be available again in future.",

          'name281': 'Venlafaxine',
          'dieases281':
              "It's used to treat depression and sometimes anxiety and panic attacks.",

          'name282': 'Verapamil',
          'dieases282':
              "It's also used to treat high blood pressure (hypertension).",

          'name283': 'Warfarin',
          'dieases283':
              "It makes your blood flow through your veins more easily.",

          'name284': 'Zolpidem',
          'dieases284':
              "It helps you fall asleep more quickly and makes you less likely to wake up during the night. It works by affecting a calming chemical in your brain called gamma-aminobutyric acid (GABA).",

          'name285': 'Zopiclone',
          'dieases285':
              "It helps you fall asleep more quickly, and also helps stop you waking up during the night.",

          'name286': 'Diclofenac Tablet 50 mg',
          'dieases286':
              "Analgesics, antipyretics, non-steroidal anti-inflammatorymedicines, medicines used to treat gout and disease modifying agentsused in rheumatoid disorders",

          'name287': 'Paracetamol Syrup 125 mg/5ml',
          'dieases287':
              "Analgesics, antipyretics, non-steroidal anti-inflammatorymedicines, medicines used to treat gout and disease modifying agentsused in rheumatoid disorders",

          'name288': 'Levocetirizine 5mg Tablet',
          'dieases288': "Anti-allergics and medicines used in anaphylaxis",

          'name289': 'Hydrocortisone Succinate Injection 100 mg',
          'dieases289': "Anti-allergics and medicines used in anaphylaxis",

          'name290': 'Diethylcarbamazine Tablet 100 mg',
          'dieases290': "Anti-filarial",

          'name291': 'Fluconazole 150mg Tablet',
          'dieases291': "Anti-fungal medicines",

          'name292': ' Hydrochlorothiazide Tablet 12.5 mg ',
          'dieases292': "(Sublingual)Anti-hypertensive medicines",

          'name293': ' Silver sulphadiazine Cream 1%',
          'dieases293': "Dermatological medicines (Topical)",
          'name294': 'Calamine Lotion',
          'dieases294': "Dermatological medicines (Topical)",

          'name295': 'Benzyl benzoate ointment/lotion',
          'dieases295': "Dermatological medicines (Topical)",

          'name296': 'Potassium Permanganate 0.1%',
          'dieases296': "Dermatological medicines (Topical)",

          'name297': 'Zinc Oxide Cream 10%',
          'dieases297': "Dermatological medicines (Topical)",

          'name298': ' Ethyl alcohol (Denatured) Solution 70%',
          'dieases298': "Disinfectants and antiseptics",

          'name299': 'Hydrogen peroxide Solution 6%',
          'dieases299': "Disinfectants and antiseptics",
          'name300': 'B Complex Tablet ', 'dieases300': "Vitamins and minerals",

          'name301': 'Vitamin A Oral liquid 100000IU/ml',
          'dieases301': "Vitamins and minerals",
          'name302': 'Pyridoxine Tablet 25 mg',
          'dieases302': "Vitamins and minerals",

          'name303': 'Cholecalciferol Tablet 60000 IU',
          'dieases303': "Vitamins and minerals",

          'name304': 'Calcium Carbonate Tablet 500 mg',
          'dieases304': "Vitamins and minerals",

          'name305': 'Sodium chloride injection 0.9%',
          'dieases305':
              "Solutions correcting water, electrolyte disturbances and acid-base disturbances",

          'name306': 'Dextrose 5%',
          'dieases306':
              "Solutions correcting water, electrolyte disturbances and acid-base disturbances",

          'name307': 'Normal Saline Drops',
          'dieases307': "Medicines acting on the respiratory tract",
          'name308': ' Rabies vaccine', 'dieases308': "Vaccines",

          'name309': 'Levothyroxine Tablet 50 mcg',
          'dieases309': "Thyroid and Anti-thyroid medicines",

          'name310': 'Glibenclamide Tablet 2.5 mg',
          'dieases310': "Medicines used in Diabetes Mellitus",
          'name311': 'Zinc Sulphate Syrup',
          'dieases311': "Gastrointestinal medicines",

          'name312': 'Oral rehydration salts (ORS)',
          'dieases312': "Gastrointestinal medicines",

          'name313': 'Ciprofloxacin Drops 0.3 % ',
          'dieases313': "Ear, nose and throat medicines",

          'name314': ' Ethyl alcohol (Denatured) Solution 70%',
          'dieases314': "Disinfectants and antiseptics",

          'name315': 'Hydrogen peroxide Solution 6%',
          'dieases315': "Disinfectants and antiseptics",
        },
        'hi_IN': {
          'appName': 'केर ऐंड क्योर',
          'rule1_1': 'देखभाल और इलाज में आपका स्वागत है',
          'rule1_2':
              'एप्लिकेशन का उपयोग करने के लिए तैयार हैं? दाएं से बाएं स्वाइप करें और एप्लिकेशन की मूल बातें सीखें।',
          'rule2':
              'जानकारी: यह जानकारी बॉक्स है, यहां आप जानते हैं कि लॉगिन अनुभाग कैसे काम करता है।\n2: यह रोगी पक्ष लॉगिन गतिविधि है।\n3: यह डॉक्टर पक्ष लॉगिन गतिविधि है।\n4: यह अस्पताल पक्ष लॉगिन गतिविधि है।',
          'rule3': 'कृपया अपनी पसंदीदा भाषा चुनें',
          'select': 'भाषा चुने',
          'rule4':
              'डेस्क-कोड ने व्यवस्थापक और उपयोगकर्ता गोपनीयता के बारे में चिंता की है। इसलिए प्राइवेसी संबंधी भूल जाएं और सहज और उत्कृष्ट ऐप का उपयोग करें।',
          'loginInfo':
              'अपने क्षेत्र के अनुसार लॉगिन करें \n\n* रोगी लॉगिन क्वेरी \nपहले लॉगिन करें और रोगी केवल अपना डेटा देख सकता है। \n\n* अस्पताल लॉगिन क्वेरी \nपहले पंजीकरण करें यदि आपके पास मेडीसिस का हिस्सा नहीं है तो अस्पताल लॉगिन बटन पर जाएं और पंजीकरण करें। अब आप मेडिसिस का हिस्सा हैं। आप व्यवस्थापक हैं और सभी डेटा संभालते हैं। \n\n* डॉक्टर लॉगिन क्वेरी \nडॉक्टर केवल अपना डेटा देख सकते हैं और अपना डेटा अपडेट कर सकते हैं डॉक्टर का विवरण केवल अस्पताल प्रशासन स्टाफ द्वारा जोड़ा जाएगा। \n\nयहां अस्पताल प्रशासन सभी विवरणों को संभालने के लिए मुख्य है। अस्पताल डॉक्टर का विवरण, रोगी का विवरण आदि जोड़ सकता है...',
          'sideName': 'मरीज़, अस्पताल और डॉक्टर',
          'otpVerification': 'ओटीपी सत्यापन',
          'otpSend': 'कृपया आपको भेजा गया ओटीपी दर्ज करें',
          'otpVeriInfo':
              'हम आपको इस दिए गए मोबाइल नंबर पर एक वन टाइम पासवर्ड भेजेंगे',
          'otpNotRecieve': 'ओटीपी प्राप्त नहीं हुआ?',
          'otpResend': 'ओटीपी पुनः भेजें',
          'patientLogin': 'रोगी लॉगिन',
          'doctorLogin': 'डॉक्टर लॉगिन',
          'hospitalLogin': 'अस्पताल लॉगिन',
          'notHaveAccount': 'क्या आपके पास खाता नहीं है?',
          'register': 'पंजीकरण करवाना',
          'getOtp': 'ओटीपी प्राप्त करें',
          'start': 'शुरू',
          'next': 'अगला',
          'previous': 'पहले का',
          'verify': 'सत्यापित करें',
          'signupTitle': 'चलिए आपका अकाउंट बनाते हैं....',
          'hospitalName': 'अस्पताल का नाम',
          'hospitalMNumber': 'अस्पताल का मोबाइल नंबर',
          'hospitalEmail': 'अस्पताल ईमेल',
          'hospitalAddress': 'अस्पताल का पता',
          'hospitalUpiId': 'हॉस्पिटल यूपीआई आईडी',
          'password': 'पासवर्ड',
          'signupButton': 'अभी साइनअप करें',
          'hospital': 'अस्पताल',
          'certificate': 'प्रमाणपत्र',
          'addImage': 'छवि जोड़ें',
          'addImageInfo':
              'कृपया अस्पताल के सत्यापन के लिए अपने दस्तावेज़ की छवि संलग्न करें',
          'done': 'हो गया',
          'select file': 'फ़ाइल का चयन करें',
          'upload file': 'फ़ाइल अपलोड करें',
          'register error': 'आपका फ़ोन नंबर अस्पताल में पंजीकृत नहीं है',
          'tfError': 'यह फ़ील्ड आवश्यक है',
          'userAdded': 'उपयोगकर्ता जोड़ा गया',
          'faiAddUser': 'उपयोगकर्ता जोड़ने में विफल',
          'userDeleted': 'उपयोगकर्ता हटा दिया गया',
          'faiDelUser': 'उपयोगकर्ता को हटाने में विफल',
          'userUpdated': 'उपयोगकर्ता अपडेट किया गया',
          'faiUpdUser': 'डेटा अपडेट करने में विफल',
          'verfiComp': 'सत्यापन पूरा हुआ',
          'profile': 'प्रोफ़ाइल',
          'dashBoard': 'डैशबोर्ड',
          'logout': 'लॉग आउट',
          'confirm': 'कृपया पुष्टि करें',
          'logoutAlert': 'क्या आप लॉगआउट करना चाहते हैं?',
          'no': 'नहीं',
          'yes': 'हाँ',
          'disease': 'बीमारी',
          'payableAmount': 'भुगतान योग्य राशि',
          'update': 'अपडेट',
          'search': 'खोज',
          'patientName': 'रोगी का नाम',
          'mobileNo': 'मोबाइल नंबर',
          'email': 'ईमेल',
          'gender': 'लिंग',
          'bloodGroup': 'ब्लड ग्रुप',
          'age': 'आयु',
          'address': 'पता',
          'admitDate': 'व्यवस्थापक दिनांक',
          'addDP': 'रोग और भुगतान जोड़ें',
          'doctorName': 'डॉक्टर का नाम',
          'adharNumber': 'आधार नंबर',
          'specialist': 'माहिर',
          'qualification': 'योग्यता',
          'payment': 'भुगतान',
          'medicine': 'दवा',
          'payAmount': 'भुगतान राशि',
          'roomNo': 'कमरा नं.',
          'wardNo': 'वार्ड नं.',
          'payInfo1': 'आसान तरीके से भुगतान करें',
          'payInfo2': 'आपका भुगतान रास्ते में है...',
          'enterAmount': 'राशि डालें',
          'slidePay': 'भुगतान करने के लिए स्लाइड करें',
          'payError':
              'कृपया पहले देय राशि की जांच कर लें या यह आपकी भुगतान राशि से अधिक तो नहीं है',
          'fullName': 'पूरा नाम',
          'phIsReq': 'फ़ोन नंबर आवश्यक है',
          'entInLength': 'लंबाई में संख्या दर्ज करें',
          'sGender': 'अपना लिंग चुनें',
          'male': 'पुरुष',
          'female': 'महिला',
          'validRange': 'वैध आयु दर्ज करें',
          'ageIsReq': 'आयु आवश्यक है',
          'emailIsReq': 'ईमेल की जरूरत है',
          'validEmail': 'ईमेल एक मान्य प्रारूप नहीं है',
          'aadharIsReq': 'आधार नंबर आवश्यक है',
          'validAadhar': 'एक वैध आधार नंबर दर्ज करें',
          'passReq': 'पासवर्ड की आवश्यकता है',
          'validPass': 'न्यूनतम 6 अक्षर का पासवर्ड आवश्यक है',
          'profilePick': 'प्रोफ़ाइल चयन',
          'submit': 'जमा करना',
          'staffSection': 'स्टाफ अनुभाग',
          'fire': 'बर्खास्त करना',
          'name': 'नाम',
          'sortStaff': 'स्टाफ को क्रमबद्ध करें',
          'by': 'द्वारा',
          'upiid': 'यूपीआई आईडी',
          'refDoc': 'संदर्भ डॉक्टर का चयन करें',
          'sQualification': 'अपनी योग्यता चुनें',
          'sBloodGroup': 'अपना रक्त समूह चुनें',
          'sortPatient': 'रोगी को इसके अनुसार क्रमबद्ध करें',
          'payPrnd': 'भुगतान लंबित',
          'payComp': 'भुगतान पूरा हुआ',
          'welcome': 'आपका स्वागत है',
          'staff': 'स्टाफ',
          'patient': 'मरीज़',
          'doctor': 'डॉक्टर',
          'bill': 'बिल',
          'home': 'होम',
          'patientDetails': 'मरीज़ का विवरण',
          'staffDetail': 'स्टाफ विवरण',
          'doctorDetail': 'डॉक्टर विवरण',
          'sortDocBy': 'डॉक्टर को इसके अनुसार क्रमबद्ध करें',
          'twoFactor': 'अतिरिक्त सुरक्षा',
          'on': 'चालू',
          'off': 'बंद',
          'deviceSupport': 'यह उपकरण समर्थित नहीं है',

          //medicine data
          'name1': 'एसाइक्लोविर (ज़ोविराक्स)',
          'dieases1':
              "सर्दी-जुकाम, चिकनपॉक्स, दाद और अन्य हर्पीस वायरस के संक्रमण का इलाज करने वाली एसाइक्लोविर और इसे लेने के तरीके के बारे में जानें।",

          'name2': 'एक्रिवास्टीन',
          'dieases2':
              "इसका उपयोग हे फीवर, नेत्रश्लेष्मलाशोथ (लाल, खुजली वाली आंखें), एक्जिमा और पित्ती (पित्ती) के इलाज के लिए किया जाता है",
          'name3': 'अदालिमुमेब',
          'dieases3':
              "इसका उपयोग आपकी प्रतिरक्षा प्रणाली पर कार्य करके सूजन (सूजन) को कम करने के लिए किया जाता है",
          'name4': 'एलेंड्रोनिक एसिड',
          'dieases4':
              "एलेंड्रोनिक एसिड एक प्रकार की दवा है जिसे बिसफ़ॉस्फ़ोनेट कहा जाता है। आपकी हड्डियों को यथासंभव मजबूत बनाए रखने में मदद करने के लिए बिसफ़ॉस्फ़ोनेट्स निर्धारित किए जाते हैं",
          'name5': 'एलोप्यूरिनॉल',
          'dieases5':
              "एलोप्यूरिनॉल एक दवा है जिसका उपयोग आपके रक्त में यूरिक एसिड के स्तर को कम करने के लिए किया जाता है",
          'name6': 'एलोग्लिप्टिन',
          'dieases6':
              "एलोग्लिप्टिन उन लोगों के लिए निर्धारित है जिनके पास अभी भी उच्च रक्त शर्करा है, भले ही वे उचित आहार लेते हैं और नियमित रूप से व्यायाम करते हैं",
          'name7': 'एमिट्रिप्टीलिन  फॉर डिप्रेशन ',
          'dieases7':
              "एमिट्रिप्टिलाइन एक अवसादरोधी दवा है। इसका उपयोग खराब मूड और अवसाद के इलाज के लिए किया जाता है",
          'name8': 'एमिट्रिप्टीलिन  फॉर पैन एंड माइग्रेन ',
          'dieases8':
              "एमिट्रिप्टिलाइन का उपयोग अवसाद के इलाज के लिए किया जाता है। दर्द के इलाज के लिए इस्तेमाल की जाने वाली खुराक अवसाद की खुराक से कम है",
          'name9': 'अम्लॉडीपीने ',
          'dieases9':
              "एम्लोडिपाइन उच्च रक्तचाप का इलाज करता है और हृदय रोग को रोकने में मदद करता है",
          'name10': 'अमोक्सीक्लीलिन ',
          'dieases10':
              "इसका उपयोग जीवाणु संक्रमण, जैसे छाती में संक्रमण (निमोनिया सहित) और दंत फोड़े के इलाज के लिए किया जाता है",
          'name11': 'अनस्ट्रोजॉले ',
          'dieases11':
              "एनास्ट्रोज़ोल एक प्रकार का हार्मोन उपचार है। यह आपके शरीर में एस्ट्रोजन हार्मोन के स्तर को कम करके काम करता है",
          'name12': 'एंटीडिप्रेसन्ट',
          'dieases12':
              "यह मस्तिष्क में न्यूरोट्रांसमीटर नामक रसायनों के स्तर को बढ़ाकर काम करते हैं। कुछ न्यूरोट्रांसमीटर, जैसे सेरोटोनिन और नॉरएड्रेनालाईन, मूड और भावना से जुड़े होते हैं",
          'name13': 'अपिक्साबन',
          'dieases13':
              "इसका उपयोग उन लोगों के इलाज के लिए किया जाता है जिन्हें रक्त के थक्के जमने के कारण स्वास्थ्य समस्याएं होती हैं",
          'name14': 'एरीपिप्राज़ोल',
          'dieases14':
              "एरिपिप्राज़ोल एक दवा है जो सिज़ोफ्रेनिया जैसी मानसिक स्वास्थ्य स्थितियों में मदद करती है, जहां आप ऐसी चीजें देख, सुन या महसूस कर सकते हैं जो मौजूद नहीं हैं",
          'name15': 'एस्पिरिन (एसिटाइलसैलिसिलिक एसिड) टैबलेट 75 मिलीग्राम',
          'dieases15':
              "एनाल्जेसिक, ज्वरनाशक, गैर-स्टेरायडल सूजन-रोधी दवाएं, गठिया के इलाज के लिए इस्तेमाल की जाने वाली दवाएं और रूमेटोइड विकारों में इस्तेमाल होने वाले रोग संशोधित करने वाले एजेंट",
          'name16': 'सक्रियित कोयला',
          'dieases16': "एंटी-डोट्स और विषाक्तता में प्रयुक्त अन्य पदार्थ",
          'name17': ' एल्बेंडाजोल टैबलेट 400 मि.ग्रा',
          'dieases17': "आंतों के कृमिनाशक",
          'name18': 'अमोक्सिसिलिन कैप्सूल 250 मिलीग्राम,',
          'dieases18': "जीवाणुरोधी",
          'name19': 'एस्कॉर्बिक एसिड (विटामिन सी) टैबलेट 100 मिलीग्राम',
          'dieases19': "विटामिन और खनिज",
          'name20': 'एस्पिरिन फॉर पैन रिलीफ ',
          'dieases20':
              "इसका उपयोग सर्दी और फ्लू जैसे लक्षणों के इलाज के लिए और उच्च तापमान को कम करने के लिए भी किया जा सकता है",
          'name21': 'लौ - दोसे एस्पिरिन ',
          'dieases21':
              "यह कम खुराक वाली एस्पिरिन उन लोगों में दिल के दौरे और स्ट्रोक को रोकने में मदद करती है, जिन्हें इसका खतरा अधिक है। एस्पिरिन को एसिटाइलसैलिसिलिक एसिड के रूप में भी जाना जाता है",
          'name22': 'एटेनोलोल',
          'dieases22':
              "एटेनोलोल एक बीटा ब्लॉकर दवा है, जिसका उपयोग उच्च रक्तचाप (उच्च रक्तचाप) और अनियमित दिल की धड़कन (अतालता) के इलाज के लिए किया जाता है",
          'name23': 'एटोरवास्टेटिन',
          'dieases23':
              "यदि आपको उच्च रक्त कोलेस्ट्रॉल का निदान किया गया है तो इसका उपयोग कोलेस्ट्रॉल को कम करने और दिल के दौरे और स्ट्रोक सहित हृदय रोग को रोकने के लिए किया जाता है।",
          'name24': 'एज़ैथीओप्रिन',
          'dieases24':
              "एज़ैथियोप्रिन एक प्रकार की दवा है जिसे इम्यूनोसप्रेसेन्ट कहा जाता है। इम्यूनोसप्रेसेन्ट्स आपके शरीर की प्रतिरक्षा प्रणाली को शांत या नियंत्रित करने में मदद करते हैं",
          'name25': 'अज़िथ्रोमैकिन ',
          'dieases25':
              "मैक्रोलाइड एंटीबायोटिक्स संक्रमण पैदा करने वाले बैक्टीरिया को मारने का काम करते हैं और छाती में संक्रमण को रोकने के लिए लंबे समय तक भी इस्तेमाल किया जा सकता है",
          'name26': 'बेक्लोफेन ',
          'dieases26':
              "यदि किसी अस्पताल में विशेषज्ञ डॉक्टर द्वारा निर्धारित किया गया हो तो बैक्लोफ़ेन टैबलेट का उपयोग मांसपेशियों की ऐंठन, ऐंठन या स्थितियों के कारण होने वाली कठोरता से राहत देने के लिए किया जाता है",
          'name27': 'बेक्लोमेटासोन इन्हेलर',
          'dieases27':
              "बेक्लोमेटासोन एक प्रकार की दवा है जिसे स्टेरॉयड (जिसे कॉर्टिकोस्टेरॉइड भी कहा जाता है) के रूप में जाना जाता है। इसका उपयोग मुख्य रूप से अस्थमा के लिए किया जाता है, लेकिन कभी-कभी क्रॉनिक ऑब्सट्रक्टिव पल्मोनरी डिजीज (सीओपीडी) के लिए भी किया जाता है",
          'name28': 'बेक्लोमेटासोन नेज़ल स्प्रे',
          'dieases28':
              "बेक्लोमेटासोन नेज़ल (नाक) स्प्रे का उपयोग एलर्जिक राइनाइटिस के कारण होने वाले सर्दी जैसे लक्षणों के इलाज के लिए किया जाता है",
          'name29': 'बेक्लोमेटासोन स्किन क्रीम',
          'dieases29':
              "बेक्लोमेटासोन क्रीम और मलहम का उपयोग खुजली, सूजन और चिढ़ त्वचा के इलाज के लिए किया जाता है",
          'name30': 'बेक्लोमेटासोन टेबलेट ',
          'dieases30':
              "बेक्लोमेटासोन टैबलेट का उपयोग अल्सरेटिव कोलाइटिस के इलाज के लिए किया जाता है। वे आपके आंत में सूजन (सूजन) को कम करके काम करते हैं",
          'name31': 'बेन्डरॉलमेथिअजीदे ',
          'dieases31':
              "इसका उपयोग आपके शरीर में उच्च रक्तचाप (उच्च रक्तचाप) और तरल पदार्थ के निर्माण (एडिमा) के इलाज के लिए किया जाता है",
          'name32': 'बेंज़ोइल पेरोक्साइड',
          'dieases32':
              "बेंज़ोयल पेरोक्साइड का उपयोग मुँहासे के इलाज के लिए किया जाता है। यह आपकी त्वचा की सतह पर रोगाणुओं (बैक्टीरिया) की संख्या को कम करने के लिए एक एंटीसेप्टिक के रूप में काम करता है",
          'name33': 'बेंज़ाइडामाइन',
          'dieases33':
              "बेंज़ाइडामाइन एक एनएसएआईडी (गैर-स्टेरायडल एंटी-इंफ्लेमेटरी दवा) है जो दर्द और सूजन (सूजन) को कम करती है",
          'name34': 'बेताहिस्टिन',
          'dieases34':
              "यह आंतरिक कान में तरल पदार्थ के निर्माण को कम करके काम करता है। यह कम करने में मदद करता है कि आपको मेनियार्स रोग के लक्षण कितनी बार मिलते हैं और उन्हें हल्का बनाता है।",
          'name35': ' बेटहमेसोने  फॉर आईज , एजर्स एंड नोज ',
          'dieases35':
              "इसका उपयोग आपके बाहरी कान में सूजन का इलाज करने के लिए भी किया जाता है जो एक्जिमा, पानी या ईयर प्लग के कारण हो सकता है",
          'name36': ' बेटहमेसोने  फॉर स्किन ',
          'dieases36':
              "बीटामेथासोन त्वचा उपचार का उपयोग खुजली, सूजन और चिढ़ त्वचा के इलाज के लिए किया जाता है। वे एक्जिमा, कॉन्टैक्ट डर्मेटाइटिस और सोरायसिस जैसी स्थितियों में मदद कर सकते हैं",
          'name37': ' बेटहमेसोने  टेबलेट्स',
          'dieases37':
              "बीटामेथासोन सूजन (सूजन) को कम करने का काम करता है। यह आपकी प्रतिरक्षा प्रणाली को भी शांत करता है",
          'name38': 'बिमाटोप्रोस्ट',
          'dieases38':
              "बिमाटोप्रोस्ट एक दवा है जो आंखों में उच्च दबाव (नेत्र उच्च रक्तचाप) का इलाज करती है और ग्लूकोमा में मदद करती है",
          'name39': 'बिसाकोडिल',
          'dieases39':
              "बिसाकोडिल एक रेचक है। यदि आपको कब्ज (मल त्यागने में कठिनाई) है तो इस प्रकार की दवा आपकी आंतों को खाली करने में मदद कर सकती है",
          'name40': 'बिसोप्रोलोल',
          'dieases40':
              "बिसोप्रोलोल यदि आपको उच्च रक्तचाप है, तो बिसोप्रोलोल लेने से भविष्य में दिल के दौरे, दिल के दौरे और स्ट्रोक को रोकने में मदद मिलती है",
          'name41': 'ब्रॉन्ज़ोलामीदे ',
          'dieases41':
              "ब्रिनज़ोलैमाइड एक दवा है जो आंख के अंदर उच्च दबाव (नेत्र उच्च रक्तचाप) का इलाज करती है और ग्लूकोमा में मदद करती है",
          'name42': 'ब्रॉन्ज़ोलामीदे इन्हेलर्स ',
          'dieases42':
              "बुडेसोनाइड इनहेलर एक स्टेरॉयड दवा है जिसका उपयोग अस्थमा और क्रॉनिक ऑब्सट्रक्टिव पल्मोनरी डिजीज (सीओपीडी) के लिए किया जाता है",
          'name43': 'ब्रॉन्ज़ोलामीदे नेसल स्प्रे',
          'dieases43':
              "बुडेसोनाइड नेज़ल (नाक) स्प्रे का उपयोग एलर्जिक राइनाइटिस के कारण होने वाले सर्दी जैसे लक्षणों के इलाज के लिए किया जाता है",
          'name44': 'ब्रॉन्ज़ोलामीदे रेक्टल फ्रॉम एंड एनएमस ',
          'dieases44':
              "बुडेसोनाइड रेक्टल फोम और एनीमा का उपयोग अल्सरेटिव कोलाइटिस के इलाज के लिए किया जाता है",
          'name45': 'ब्रॉन्ज़ोलामीदे टेबलेट्स कैप्सूल्स एंड ग्रनुलेस ',
          'dieases45':
              "बुडेसोनाइड का उपयोग सूजन (सूजन) को कम करने के लिए किया जाता है, जो कुछ स्थितियों के लक्षणों को नियंत्रित करने में मदद करता है",
          'name46': 'बुमेटेनाइड',
          'dieases46':
              "इसका उपयोग हृदय की विफलता और आपके शरीर में तरल पदार्थ के निर्माण (एडिमा) के इलाज के लिए किया जाता है",
          'name47': 'बुप्रेनोरफिने  फॉर पैन ',
          'dieases47':
              "इसका उपयोग मुख्य रूप से मध्यम से गंभीर दर्द का इलाज करने के लिए किया जाता है, उदाहरण के लिए ऑपरेशन के दौरान या बाद में या गंभीर चोट, या कैंसर से दर्द",
          'name48': 'बुस्कोपैन (हायोसाइन ब्यूटाइलब्रोमाइड)',
          'dieases48':
              "बुस्कोपैन दर्दनाक पेट की ऐंठन से राहत देता है, जिसमें चिड़चिड़ा आंत्र सिंड्रोम (आईबीएस) से जुड़ी ऐंठन भी शामिल है",
          'name49': 'काल्सिपोटरिओल ',
          'dieases49':
              "कैल्सीपोट्रियोल का उपयोग प्लाक सोरायसिस के इलाज के लिए किया जाता है, एक त्वचा की समस्या जहां आपका शरीर बहुत अधिक त्वचा कोशिकाओं का उत्पादन करता है, जिससे सूखी, खुजली वाली, पपड़ीदार त्वचा (प्लाक) के धब्बे हो जाते हैं",
          'name50': 'कैंडेसेर्टन',
          'dieases50':
              "यह भविष्य में स्ट्रोक, दिल के दौरे और गुर्दे की समस्याओं को रोकने में मदद करता है। यदि आप इसे दिल की विफलता के लिए ले रहे हैं तो यह आपके अस्तित्व में भी सुधार करता है",
          'name51': 'कार्बमेज़पाइन',
          'dieases51':
              "इसे मधुमेह (परिधीय न्यूरोपैथी) के कारण होने वाले तंत्रिका दर्द के लिए भी लिया जा सकता है या यदि आपके चेहरे पर ट्राइजेमिनल न्यूराल्जिया नामक दर्दनाक स्थिति है",
          'name52': 'कार्बिमाज़ोल',
          'dieases52':
              "कार्बिमाज़ोल एक दवा है जिसका उपयोग अतिसक्रिय थायरॉयड (हाइपरथायरायडिज्म) के इलाज के लिए किया जाता है। यह तब होता है जब आपकी थायरॉयड ग्रंथि बहुत अधिक थायराइड हार्मोन बनाती है",
          'name53': 'कार्बोसिस्टीन',
          'dieases53':
              "कार्बोसिस्टीन एक प्रकार की दवा है जिसे म्यूकोलाईटिक कहा जाता है",
          'name54': 'कार्मेलोज़ सोडियम',
          'dieases54':
              "कार्मेलोज़ सोडियम एक स्नेहक है जिसका उपयोग सूखी आँखों के इलाज के लिए किया जाता है। यह आई ड्रॉप के रूप में आता है जो कृत्रिम आँसू की तरह काम करता है",
          'name55': 'कार्वेडिलोल',
          'dieases55':
              "दिल की विफलता के इलाज और एनजाइना के कारण होने वाले सीने के दर्द को रोकने के लिए इसे अन्य दवाओं के साथ भी दिया जा सकता है",
          'name56': 'सेफैलेक्सिन',
          'dieases56':
              "सेफैलेक्सिन एक एंटीबायोटिक है। यह सेफलोस्पोरिन नामक एंटीबायोटिक दवाओं के समूह से संबंधित है",
          'name57': 'स्टीरिज़ीने',
          'dieases57':
              "सेटिरिज़िन को एक गैर-नींद न आने वाले एंटीहिस्टामाइन के रूप में जाना जाता है। कुछ अन्य एंटीहिस्टामाइन की तुलना में इससे आपको नींद आने की संभावना बहुत कम होती है",
          'name58': 'चैंपिक्स (वैरेनिकलाइन)',
          'dieases58':
              "चैंपिक्स (जिसे वैरेनिकलाइन भी कहा जाता है) वर्तमान में यूके या यूरोप में उपलब्ध नहीं है",
          'name59': 'च्लोरमफेनिकल ',
          'dieases59':
              "इसका उपयोग मुख्य रूप से आंखों के संक्रमण (जैसे नेत्रश्लेष्मलाशोथ) और कभी-कभी कान के संक्रमण के इलाज के लिए किया जाता है",
          'name60': 'चलरहेसिडीने ',
          'dieases60':
              "क्लोरहेक्सिडिन एक एंटीसेप्टिक और कीटाणुनाशक है। यह आपके मुंह में या आपकी त्वचा पर कीटाणुओं (बैक्टीरिया) की संख्या को कम करने में मदद करता है",
          'name61': 'क्लोरफेनमाइन (पिरिटोन)',
          'dieases61':
              "क्लोरफेनमाइन एक एंटीहिस्टामाइन दवा है जो एलर्जी के लक्षणों से राहत दिलाती है",
          'name62': 'सिनारिज़िन',
          'dieases62':
              "सिनारिज़िन एक एंटीहिस्टामाइन है जो आपको बीमार महसूस करने या बीमार महसूस करने से रोकता है, जैसे मतली या उल्टी",
          'name63': 'सिप्रोफ्लोक्सासिं',
          'dieases63':
              "इसका उपयोग कई जीवाणु संक्रमणों के इलाज के लिए किया जाता है",
          'name64': 'सीतालोप्राम',
          'dieases64':
              "इसका उपयोग अक्सर खराब मूड (अवसाद) के इलाज के लिए किया जाता है और कभी-कभी पैनिक अटैक के लिए भी किया जाता है",
          'name65': 'क्लैरिथ्रोमाइसिन',
          'dieases65':
              "इसका उपयोग सीने में संक्रमण जैसे निमोनिया, त्वचा की समस्याओं जैसे सेल्युलाइटिस और कान में संक्रमण के इलाज के लिए किया जाता है",
          'name66': 'क्लोबेटासोल',
          'dieases66':
              "क्लोबेटासोल एक स्टेरॉयड दवा है जिसका उपयोग त्वचा पर सूजन, खुजली और जलन के इलाज के लिए किया जाता है",
          'name67': 'क्लोबेटासोन',
          'dieases67':
              "क्लोबेटासोन (क्लोबेटासोन ब्यूटायरेट के रूप में भी जाना जाता है) एक स्टेरॉयड दवा है जिसका उपयोग त्वचा पर सूजन, खुजली और जलन के इलाज के लिए किया जाता है",
          'name68': 'क्लोनाज़ेपम',
          'dieases68':
              "इसका उपयोग मिर्गी, अनैच्छिक मांसपेशियों की ऐंठन, घबराहट संबंधी विकार और कभी-कभी बेचैन पैर सिंड्रोम के कारण होने वाले दौरों या दौरों को नियंत्रित करने के लिए किया जाता है",
          'name69': 'क्लोनिडीन ',
          'dieases69':
              "यह हृदय में रक्त वाहिकाओं को आराम देने और चौड़ा करने में मदद करता है ताकि रक्त उनके माध्यम से अधिक आसानी से गुजर सके",
          'name70': 'क्लोपिडोग्रेल ',
          'dieases70':
              "यह प्लेटलेट्स (एक प्रकार की रक्त कोशिका) को एक साथ चिपकने और खतरनाक रक्त का थक्का बनाने से रोकता है",
          'name71': 'क्लोट्रिमेज़ोल क्रीम, स्प्रे और सलूशन ',
          'dieases71':
              "क्लोट्रिमेज़ोल एक एंटीफंगल दवा है। इसका उपयोग कवक (खमीर) के कारण होने वाले त्वचा संक्रमण के इलाज के लिए किया जाता है",
          'name72': 'क्लोट्रिमझोले फॉर थ्रश (कनस्तेन)',
          'dieases72':
              "इसका उपयोग पुरुषों और महिलाओं में थ्रश सहित यीस्ट संक्रमण के इलाज के लिए किया जाता है, हालांकि थ्रश महिलाओं में अधिक आम है",
          'name73': 'सीओ-अमोक्सीस्लाव ',
          'dieases73':
              "को-एमोक्सिक्लेव एक एंटीबायोटिक है जिसका उपयोग जीवाणु संक्रमण के लिए किया जाता है",
          'name74': 'सीओ - बेनेलडोपा ',
          'dieases74':
              "यह कंपकंपी (कंपकंपी), धीमापन और कठोरता में मदद कर सकता है",
          'name75': 'सीओ - करेलडोपा',
          'dieases75':
              "को-केयरल्डोपा आपके मस्तिष्क के लिए आपकी मांसपेशियों को फिर से संदेश भेजना आसान बनाकर काम करता है",
          'name76': 'सीओ -कदमोल फॉर एडल्ट्स ',
          'dieases76':
              "इसका उपयोग वयस्कों के लिए सिरदर्द, मांसपेशियों में दर्द, माइग्रेन और दांत दर्द सहित दर्द के इलाज के लिए किया जाता है",
          'name77': 'सीओ -कदमोल फॉर चिल्ड्रन ',
          'dieases77':
              "इसका उपयोग बच्चों के सिरदर्द, मांसपेशियों में दर्द, माइग्रेन और दांत दर्द सहित दर्द के इलाज के लिए किया जाता है",
          'name78': 'सह-कोडाप्रिन (एस्पिरिन और कोडीन)',
          'dieases78':
              "इसका उपयोग सर्दी और फ्लू के लक्षणों के इलाज के लिए भी किया जा सकता है",
          'name79': 'सह डिडरमोल ',
          'dieases79':
              "इसमें पैरासिटामोल और डायहाइड्रोकोडीन का उपयोग तंत्रिकाओं और मस्तिष्क में संदेशवाहकों को अवरुद्ध करके काम करता है जो आपके शरीर को बताते हैं कि आप दर्द में हैं",
          'name80': 'कोल तार',
          'dieases80':
              "कोयला टार एक दवा है जिसका उपयोग त्वचा और खोपड़ी पर खुजली, जलन और सूखे पैच (स्केलिंग और पपड़ी) के इलाज के लिए किया जाता है",
          'name81': 'कौडीन',
          'dieases81':
              "इसका उपयोग दर्द का इलाज करने के लिए किया जाता है, उदाहरण के लिए, ऑपरेशन या चोट के बाद",
          'name82': 'कोल्चिकिने',
          'dieases82': "कोलचिसिन सूजन और दर्द के इलाज के लिए एक दवा है",
          'name83': 'कलेसेल्सिफेरोल',
          'dieases83':
              "कोलेकल्सीफेरोल विटामिन डी का एक रूप है। यह आपके शरीर को आपके द्वारा खाए जाने वाले भोजन से अधिक कैल्शियम और फास्फोरस अवशोषित करने में मदद करता है",
          'name84':
              'कंटीन्यूअस कंबाइंड होरने रिप्लेसमेंट थेरेपी (हरत ) टेबलेट्स, कैप्सूल्स  एंड पैचेज ',
          'dieases84':
              "यह कमजोर हड्डियों (ऑस्टियोपोरोसिस) को भी रोक सकता है जो रजोनिवृत्ति के बाद आम है",
          'name85': 'कंट्रासेप्टिव इंजेक्शंस (मेड्रॉक्सीप्रोजेस्टरोने)',
          'dieases85':
              "मेड्रोक्सीप्रोजेस्टेरोन इंजेक्शन का उपयोग गर्भनिरोधक के रूप में किया जाता है",
          'name86': 'कयनोसोबलमीन ',
          'dieases86':
              "इसका उपयोग विटामिन बी12 की कमी से होने वाले एनीमिया (जब आपके शरीर में इस विटामिन का स्तर कम हो) के इलाज और रोकथाम के लिए किया जाता है",
          'name87': 'सिक्लीजिंए ',
          'dieases87':
              "यह एक एंटीहिस्टामाइन है जिसका उपयोग आपको बीमार महसूस करने या बीमार होने (मतली या उल्टी) को रोकने में मदद करने के लिए किया जाता है",
          'name88': 'दबिगट्रान',
          'dieases88':
              "यह आपके रक्त को आपकी नसों के माध्यम से अधिक आसानी से प्रवाहित करता है। इसका मतलब है कि आपके रक्त में खतरनाक रक्त का थक्का बनने की संभावना कम होगी",
          'name89': 'डपगलफ्लोजिन',
          'dieases89':
              "इसका उपयोग हृदय विफलता और क्रोनिक किडनी रोग (सीकेडी) के इलाज के लिए भी किया जा सकता है",
          'name90': 'डेक्सामेथासोन आई ड्रॉप',
          'dieases90':
              "इनका उपयोग सूजन, लालिमा और जलन को कम करके आंखों की सूजन का इलाज करने के लिए किया जाता है",
          'name91': 'डेक्सामेथासोन टेबलेट्स एंड लिक्विड ',
          'dieases91':
              "यह कैंसर के उपचार के दुष्प्रभावों को कम करने में भी मदद कर सकता है, या यदि आप जीवन के अंत तक देखभाल कर रहे हैं तो आपके कुछ लक्षण भी कम कर सकते हैं",
          'name92': 'डायजेपाम ',
          'dieases92':
              "इसका उपयोग चिंता, मांसपेशियों की ऐंठन और दौरे या दौरे के इलाज के लिए किया जाता है",
          'Dname93': 'डाईक्लोफेनाक',
          'dieases93':
              "इसका उपयोग दर्द और दर्द के साथ-साथ जोड़ों, मांसपेशियों और हड्डियों की समस्याओं के इलाज के लिए किया जाता है",
          'name94': 'डायजोक्सिन',
          'dieases94':
              "इसका उपयोग हृदय की कुछ समस्याओं को नियंत्रित करने के लिए किया जाता है, जैसे अनियमित दिल की धड़कन (अतालता) जिसमें एट्रियल फ़िब्रिलेशन भी शामिल है",
          'name95': 'डाईहाइड्रोकोडीन',
          'dieases95':
              "इसका उपयोग मध्यम से गंभीर दर्द के इलाज के लिए किया जाता है, जैसे कि ऑपरेशन या गंभीर चोट के बाद",
          'name96': 'डिल्टियाज़ेम',
          'dieases96':
              "यह आपके रक्तचाप को कम करके काम करता है और आपके हृदय के लिए आपके शरीर के चारों ओर रक्त पंप करना आसान बनाता है",
          'name97': 'डिफेनहाइड्रामाइन हाइड्रोक्लोराइड',
          'dieases97':
              "इसे उनींदापन (बेहोश करने वाले) एंटीहिस्टामाइन के रूप में जाना जाता है और अन्य एंटीहिस्टामाइन की तुलना में यह आपको नींद का एहसास कराने की अधिक संभावना रखता है",
          'name98': 'डिपिरिडामोल',
          'dieases98':
              "यह एक प्रकार की रक्त कोशिका (प्लेटलेट्स) को आपस में चिपकने और खतरनाक रक्त का थक्का बनाने से रोकता है",
          'name99': 'डॉक्यूसेट',
          'dieases99':
              "यह आपके मल को नरम करने में मदद करता है और यदि आपको मल त्याग (कब्ज) की समस्या है तो यह आपके मल त्याग को आसान बनाता है",
          'name100': 'डोमपरिडोन',
          'dieases100':
              "यह आपके पेट के ऊपरी हिस्से की मांसपेशियों को कसने और पेट के निचले हिस्से की मांसपेशियों को आराम देने का काम करता है",
          'name101': 'दोनेपज़िल ',
          'dieases101':
              "यह मनोभ्रंश का इलाज नहीं करता है। हालांकि, यह अल्जाइमर रोग, पार्किंसंस रोग और लेवी बॉडीज वाले मनोभ्रंश के कुछ लक्षणों का इलाज करता है",
          'name102': 'डोसुलेपिन',
          'dieases102':
              "डोसुलेपिन एक अवसादरोधी दवा है जिसका उपयोग अवसाद के इलाज के लिए किया जाता है",
          'name103': 'डोक्साज़ोसिन ',
          'dieases103':
              "इसका उपयोग उच्च रक्तचाप (उच्च रक्तचाप) और बढ़े हुए प्रोस्टेट (सौम्य प्रोस्टेटिक इज़ाफ़ा) के लक्षणों के इलाज के लिए किया जाता है",
          'name104': 'डॉक्सीसाइक्लिन',
          'dieases104':
              "यदि आप विदेश यात्रा कर रहे हैं तो इसका उपयोग मलेरिया को रोकने के लिए भी किया जा सकता है",
          'name105': 'डुलोक्सेटीन',
          'dieases105':
              "इसका उपयोग फाइब्रोमायल्गिया जैसे तंत्रिका दर्द के इलाज के लिए भी किया जाता है, और इसका उपयोग महिलाओं में तनाव मूत्र असंयम के इलाज के लिए भी किया जा सकता है",
          'name106': 'एडोक्साबैन',
          'dieases106':
              "यह आपके रक्त को आपकी नसों में अधिक आसानी से प्रवाहित करता है",
          'name107': 'एम्पाग्लिफ़्लोज़िन',
          'dieases107':
              "यदि मधुमेह की एक भी दवा आपके रक्त शर्करा को ठीक से नियंत्रित नहीं कर रही है, तो इसे इंसुलिन जैसी अन्य मधुमेह दवाओं के साथ भी लिया जा सकता है",
          'name108': 'एनालाप्रिल',
          'dieases108':
              "यदि आपको उच्च रक्तचाप है, तो एनालाप्रिल लेने से भविष्य में दिल के दौरे या स्ट्रोक को रोकने में मदद मिलेगी",
          'name109': 'इप्लेरेनोन',
          'dieases109':
              "यह आपके दिल की विफलता के लक्षणों को नियंत्रण में रखने और आपके दिल के कमजोर होने के जोखिम को कम करने में मदद करता है",
          'name110': 'इरिथ्रोमाइसिन',
          'dieases110':
              "यह व्यापक रूप से निमोनिया जैसे छाती के संक्रमण, मुँहासे और रोसैसिया जैसी त्वचा की स्थिति, दंत फोड़े और यौन संचारित संक्रमणों के इलाज के लिए उपयोग किया जाता है",
          'name111': 'एस्किटालोप्राम',
          'dieases111':
              "इसका उपयोग अक्सर अवसाद के इलाज के लिए किया जाता है और कभी-कभी चिंता, जुनूनी बाध्यकारी विकार (ओसीडी) या आतंक हमलों के लिए भी किया जाता है",
          'name112': 'इसोमेप्राजोल',
          'dieases112':
              "एसोमेप्राज़ोल आपके पेट में बनने वाले एसिड की मात्रा को कम कर देता है",
          'name113': 'एजेटिमिबे ',
          'dieases113':
              "एज़ेटीमीब का उपयोग उच्च रक्त कोलेस्ट्रॉल के इलाज के लिए किया जाता है",
          'name114': 'फेलोडिपिन',
          'dieases114':
              "फ़ेलोडिपिन एक कैल्शियम चैनल अवरोधक है जिसका उपयोग उच्च रक्तचाप (उच्च रक्तचाप) के इलाज के लिए किया जाता है",
          'name115': 'फेंटेनल',
          'dieases115':
              "यह मस्तिष्क और शरीर के बाकी हिस्सों के बीच दर्द संकेतों को अवरुद्ध करके काम करता है",
          'name116': 'फ़ेरस फ़्यूमरेट',
          'dieases116':
              "फेरस फ्यूमरेट एक प्रकार का आयरन है जिसका उपयोग आयरन की कमी से होने वाले एनीमिया के इलाज और रोकथाम के लिए दवा के रूप में किया जाता है",
          'name117': 'फेरस सल्फेट',
          'dieases117':
              "फेरस सल्फेट (या सल्फेट) एक प्रकार का आयरन है जिसका उपयोग आयरन की कमी से होने वाले एनीमिया के इलाज और रोकथाम के लिए दवा के रूप में किया जाता है।",
          'name118': 'फेक्सोफेनाडाइन',
          'dieases118':
              "फेक्सोफेनाडाइन एक एंटीहिस्टामाइन दवा है जो एलर्जी के लक्षणों में मदद करती है",
          'name119': 'फिनस्टरीडे ',
          'dieases119':
              "फ़ाइनास्टराइड का उपयोग बढ़े हुए प्रोस्टेट (सौम्य प्रोस्टेट इज़ाफ़ा) के इलाज के लिए किया जाता है। यह आपके लक्षणों को कम करने में मदद कर सकता है",
          'name120': 'फ्लुक्लोक्ज़ेसिलिन',
          'dieases120':
              "इसका उपयोग त्वचा और घाव के संक्रमण, हड्डी के संक्रमण (ऑस्टियोमाइलाइटिस) बच्चों में कान के संक्रमण के इलाज के लिए किया जाता है",
          'name121': 'फ्लुकोनाज़ोल',
          'dieases121':
              "फ्लुकोनाज़ोल एक एंटिफंगल दवा है। इसका उपयोग विभिन्न प्रकार के कवक के कारण होने वाले संक्रमण के इलाज के लिए किया जाता है",
          'name122': 'फ्लुओक्सेटीन (प्रोज़ैक)',
          'dieases122':
              "इसका उपयोग अक्सर अवसाद, और कभी-कभी जुनूनी बाध्यकारी विकार और बुलिमिया के इलाज के लिए किया जाता है",
          'name123': 'फ्लुटिकासोन इन्हेलर',
          'dieases123':
              "इनहेल्ड फ्लाइक्टासोन अस्थमा और क्रॉनिक ऑब्सट्रक्टिव पल्मोनरी डिजीज (सीओपीडी) के लिए इस्तेमाल की जाने वाली दवा है",
          'name124': 'फ्लुटिकैसोन नेज़ल स्प्रे एंड  ड्रॉप्स',
          'dieases124': "यह नाक के अंदर सूजन और जलन को कम करके काम करता है",
          'name125': 'फ्लूटिकसोने स्किन क्रीम ',
          'dieases125':
              "फ्लूटिकैसोन एक प्रकार की दवा है जिसे स्टेरॉयड (जिसे कॉर्टिकोस्टेरॉइड भी कहा जाता है) के रूप में जाना जाता है",
          'name126': 'फोलिक एसिड',
          'dieases126':
              "फोलिक एसिड विटामिन फोलेट का सिंथेटिक संस्करण है, जिसे विटामिन बी9 भी कहा जाता है",
          'name127': 'furosemide',
          'dieases127':
              "इसका उपयोग उच्च रक्तचाप (उच्च रक्तचाप), दिल की विफलता और शरीर में तरल पदार्थ के निर्माण (एडिमा) के इलाज के लिए किया जाता है",
          'name128': 'फ्यूसीडिक एसिड',
          'dieases128':
              "इसका उपयोग जीवाणु संक्रमण के इलाज के लिए किया जाता है, जैसे कि सेल्युलाइटिस और इम्पेटिगो सहित त्वचा संक्रमण, और नेत्रश्लेष्मलाशोथ (लाल, खुजली वाली आंखें) सहित आंखों के संक्रमण",
          'name129': 'फीबोगल (इसपाहुला हस्क )',
          'dieases129':
              "इस्पाघुला भूसी एक रेचक है जिसे कब्ज (मल त्यागने में कठिनाई) के इलाज के लिए लिया जाता है",
          'name130': 'गैबापेंटिनोइड्स',
          'dieases130':
              "इसे तंत्रिका दर्द के लिए भी लिया जाता है, जो मधुमेह और दाद सहित विभिन्न स्थितियों के कारण हो सकता है",
          'name131': 'गेविस्कॉन (एल्गिनिक एसिड)',
          'dieases131':
              "गेविस्कॉन का उपयोग सीने में जलन (एसिड रिफ्लक्स) और अपच के इलाज के लिए किया जा सकता है",
          'name132': 'ग्लिक्लाजाइड',
          'dieases132':
              "यह एक दवा है जिसे सल्फोनीलुरिया के नाम से जाना जाता है सल्फोनीलुरिया आपके अग्न्याशय द्वारा उत्पादित इंसुलिन की मात्रा को बढ़ाता है यह आपके रक्त शर्करा को कम करता है",
          'name133': 'ग्लिमेपिराइड',
          'dieases133':
              "ग्लिमेपाइराइड आपके शरीर में उत्पादित इंसुलिन की मात्रा को बढ़ाकर आपके रक्त शर्करा को कम करता है",
          'name134': 'ग्लाइसेरिल ट्रिनिट्रेट (जीटीएन)',
          'dieases134':
              "इसका उपयोग एनजाइना के कारण होने वाले सीने के दर्द को रोकने और उसका इलाज करने के लिए किया जाता है",
          'name135': 'हैलोपेरीडोल',
          'dieases135':
              "हेलोपरिडोल एक दवा है जो मानसिक स्वास्थ्य स्थितियों में मदद करती है",
          'name136': 'हेपरिनॉइड',
          'dieases136':
              "हेपरिनॉइड एक दवा है जो छोटे रक्त के थक्कों को बनने से रोकने में मदद करती है और आपकी त्वचा के नीचे नसों की सूजन को कम करती है",
          'name137': 'हार्मोन रिप्लेसमेंट थेरेपी (एचआरटी)',
          'dieases137':
              "हार्मोन रिप्लेसमेंट थेरेपी (एचआरटी) एक उपचार है जिसका उपयोग रजोनिवृत्ति के लक्षणों में मदद करने के लिए किया जाता है",
          'name138': 'हाइड्रोकार्टिसोन',
          'dieases138':
              "इसका उपयोग उन लोगों के लिए हार्मोन प्रतिस्थापन के रूप में भी किया जा सकता है जिनके पास पर्याप्त प्राकृतिक तनाव हार्मोन, कोर्टिसोल नहीं है",
          'name139': 'हाइड्रोकार्टिसोन बुक्कल गोलियाँ',
          'dieases139':
              "हाइड्रोकार्टिसोन बुक्कल गोलियां मुंह के छालों के दर्द से राहत दिलाती हैं और उपचार में तेजी लाती हैं",
          'name140': 'ह्य्द्रोकोर्टीसोने फॉर  पिल्स  एंड इटकी बोटॉन ',
          'dieases140':
              "आपके निचले हिस्से (गुदा) के अंदर या आसपास बवासीर में खुजली होती है। ये उपचार बवासीर को ठीक नहीं करते हैं, लेकिन वे दर्द और खुजली में मदद कर सकते हैं",
          'name141': 'ह्य्द्रोकोर्टीसोने फॉर स्किन',
          'dieases141':
              "सूजन वे एक्जिमा, सोरायसिस, संपर्क, जिल्द की सूजन, गर्मी, दाने (कांटेदार गर्मी), कीट, काटने और डंक मारने वाले नैपी रैश में मदद कर सकते हैं",
          'name142': 'हाइड्रोकार्टिसोन इंजेक्शन',
          'dieases142':
              "हाइड्रोकार्टिसोन इंजेक्शन, जिसे कॉर्टिकोस्टेरॉइड इंजेक्शन भी कहा जाता है, का उपयोग सूजन या दर्दनाक जोड़ों, या मांसपेशियों में दर्द के इलाज के लिए किया जाता है",
          'name143': 'हाइड्रोक्सोकोबालामिन',
          'dieases143':
              "इसका उपयोग विटामिन बी12 की कमी से होने वाले एनीमिया के इलाज और रोकथाम के लिए किया जाता है, जहां आपके शरीर में इस विटामिन का स्तर कम होता है",
          'name144': 'हाइड्रोकार्टिसोन टेबलेट ',
          'dieases144':
              "हाइड्रोकार्टिसोन गोलियाँ कोर्टिसोल नामक प्राकृतिक हार्मोन के प्रतिस्थापन के रूप में काम करती हैं",
          'name145': 'हाइड्रोक्सीक्लोरोक्वीन',
          'dieases145':
              "हाइड्रॉक्सीक्लोरोक्वीन एक प्रकार की दवा है जिसे रोग-संशोधित एंटी-रूमेटिक ड्रग (डीएमएआरडी) कहा जाता है। यह जारी रसायनों के प्रभाव को अवरुद्ध करके काम करता है",
          'name146': 'हायोसाइन हाइड्रोब्रोमाइड (क्वेल्स और जॉय-राइड्स)',
          'dieases146':
              "यह उल्टी को नियंत्रित करने के लिए आपके आंतरिक कान और मस्तिष्क को प्रभावित करने का काम करता है",
          'name147': 'इबुप्रोफेन और कोडीन',
          'dieases147':
              "इसका उपयोग कई प्रकार के दर्दों के इलाज के लिए किया जाता है, जिनमें शामिल हैं",
          'name148': 'वयस्कों के लिए इबुप्रोफेन (नूरोफेन)',
          'dieases148':
              "इबुप्रोफेन कई तरह के दर्दों के लिए रोजमर्रा की दर्द निवारक दवा है, जिसमें पीठ दर्द, मासिक धर्म में दर्द, दांत दर्द और सर्दी, फ्लू या कोरोना वायरस (कोविड-19) के लक्षण शामिल हैं",
          'name149': ' इबुप्रोफेन फॉर चिल्ड्रन ',
          'dieases149':
              "इसका उपयोग अक्सर सर्दी, फ्लू और कोरोना वायरस (कोविड-19), दांत निकलने, दांत दर्द, सिरदर्द, गले में खराश और कान के संक्रमण से होने वाले दर्द जैसी स्थितियों के लक्षणों के इलाज के लिए किया जाता है",
          'name150': 'इन्दापामीदे',
          'dieases150':
              "इंडैपामाइड का उपयोग उच्च रक्तचाप (उच्च रक्तचाप) के इलाज के लिए किया जाता है",
          'name151': 'इर्बेसार्टन',
          'dieases151':
              "इर्बेसार्टन एक एंजियोटेंसिन रिसेप्टर ब्लॉकर (एआरबी) दवा है जिसका व्यापक रूप से उच्च रक्तचाप (उच्च रक्तचाप) के इलाज के लिए उपयोग किया जाता है",
          'name152': 'आइसोसोरबाइड मोनोनिट्रेट और आइसोसोरबाइड डिनिट्रेट',
          'dieases152':
              "इनका उपयोग एनजाइना के लक्षणों (सीने में दर्द) को रोकने के लिए किया जाता है, ये वर्तमान एनजाइना अटैक के इलाज के लिए काम नहीं करते हैं",
          'name153': 'आइसोट्रेटिनॉइन कैप्सूल',
          'dieases153':
              "आइसोट्रेटिनोइन कैप्सूल दवा के गंभीर दुष्प्रभाव हो सकते हैं, जिनमें ऐसे दुष्प्रभाव भी शामिल हैं जो आपके मानसिक स्वास्थ्य और यौन स्वास्थ्य को प्रभावित कर सकते हैं",
          'name154': 'केटोकोनाज़ोल',
          'dieases154':
              "इसका उपयोग कवक (खमीर) के कारण होने वाले त्वचा संक्रमण के इलाज के लिए किया जाता है",
          'name155': 'लेबेटालोल',
          'dieases155':
              "लेबेटालोल एक बीटा ब्लॉकर दवा है, जिसका उपयोग गर्भावस्था में उच्च रक्तचाप सहित उच्च रक्तचाप (उच्च रक्तचाप) के इलाज के लिए किया जाता है",
          'name156': 'लैक्टुलोज',
          'dieases156':
              "कब्ज (मल त्यागने में कठिनाई) के इलाज के लिए लैक्टुलोज एक रेचक है",
          'name157': 'लामोत्रिगिने',
          'dieases157':
              "लैमोट्रिजिन एक दवा है जिसका उपयोग मिर्गी के इलाज के लिए किया जाता है। यह द्विध्रुवी विकार वाले वयस्कों में कम मूड (अवसाद) को रोकने में भी मदद कर सकता है",
          'name158': 'लानसोपराजोले ',
          'dieases158':
              "लैंसोप्राजोल आपके पेट में बनने वाले एसिड की मात्रा को कम कर देता है। इसका उपयोग अपच, सीने में जलन, एसिड रिफ्लक्स और गैस्ट्रोएसोफेगल-रिफ्लक्स-रोग (जीओआरडी) के लिए किया जाता है। ",
          'name159': 'लतानोप्रोस्ट ',
          'dieases159':
              "लैटानोप्रोस्ट एक प्रोस्टाग्लैंडीन एनालॉग दवा है जो आंख के अंदर उच्च दबाव का इलाज करती है और ग्लूकोमा के इलाज में मदद करती है",
          'name160': 'लेर्कैनिडिपाइन',
          'dieases160':
              "लेरकेनिडिपिन एक कैल्शियम चैनल अवरोधक दवा है जिसका उपयोग उच्च रक्तचाप (उच्च रक्तचाप) के इलाज के लिए किया जाता है",
          'name161': 'रेट्रोज़ोले ',
          'dieases161':
              "लेट्रोज़ोल एक दवा है जिसका उपयोग स्तन कैंसर के इलाज के लिए किया जाता है और स्तन कैंसर को दोबारा होने से रोकने में मदद करता है",
          'name162': 'लेवेतिरसेटम',
          'dieases162':
              "लेवेतिरसेटम एक दवा है जिसका उपयोग मिर्गी के इलाज के लिए किया जाता है दौरे मस्तिष्क में विद्युत गतिविधि के विस्फोट हैं जो अस्थायी रूप से इसके काम करने के तरीके को प्रभावित करते हैं",
          'name163': 'लेवोथायरोक्सिन',
          'dieases163':
              "लेवोथायरोक्सिन एक दवा है जिसका उपयोग कम सक्रिय थायरॉयड ग्रंथि (हाइपोथायरायडिज्म) के इलाज के लिए किया जाता है",
          'name164': 'लिडोसाइने फॉर माउथ थ्रोट ',
          'dieases164':
              "लिडोकेन एक स्थानीय एनेस्थेटिक है जो उस क्षेत्र को सुन्न कर देता है जहां आप इसका उपयोग करते हैं। इसका उपयोग कुछ दवाओं में इलाज के लिए किया जाता है",
          'name165': 'लिडोसाइने फॉर पिल्स एंड इतकी बॉटम ',
          'dieases165':
              "लिडोकेन एक स्थानीय एनेस्थेटिक है जो उस क्षेत्र को सुन्न कर देता है जहां आप इसका उपयोग करते हैं। इसका उपयोग कुछ दवाओं में इलाज के लिए किया जाता है",
          'name166': 'लिडोसाइने स्किन क्रीम ',
          'dieases166':
              "यह तंत्रिकाओं को आपके मस्तिष्क तक दर्द के संकेत भेजने से रोककर काम करता है",
          'name167': 'लिनाग्लिप्टिन',
          'dieases167':
              "यह आपके शरीर में बनने वाले इंसुलिन की मात्रा को बढ़ाकर काम करता है",
          'name168': 'लिसीनोप्रिल',
          'dieases168':
              "लिसिनोप्रिल उच्च रक्तचाप (उच्च रक्तचाप) और हृदय विफलता के इलाज के लिए एक दवा है",
          'name169': 'लिथियम',
          'dieases169':
              "लिथियम एक प्रकार की दवा है जिसे मूड स्थिर करने वाले के रूप में जाना जाता है। इसका उपयोग मूड विकारों के इलाज के लिए किया जाता है",
          'name170': 'लोपरामाइड',
          'dieases170':
              "लोपेरामाइड दस्त (बहती मल) के इलाज के लिए एक दवा है। यह अल्पकालिक दस्त या चिड़चिड़ा आंत्र सिंड्रोम (आईबीएस) में मदद कर सकता है",
          'name171': 'लोराटाडाइन (क्लैरिटीन)',
          'dieases171':
              "लोरैटैडाइन एक एंटीहिस्टामाइन दवा है जो एलर्जी के लक्षणों में मदद करती है। इसका उपयोग इलाज के लिए किया जाता है",
          'name172': 'लोरजेपाम ',
          'dieases172':
              "इसका उपयोग चिंता और नींद की समस्याओं का इलाज करने के लिए किया जाता है जो चिंता से संबंधित हैं",
          'name173': 'लोसार्टन',
          'dieases173':
              "उच्च रक्तचाप (उच्च रक्तचाप) और हृदय विफलता के इलाज के लिए इसका व्यापक रूप से उपयोग किया जाता है",
          'name174': 'लो-दोसे एस्पिरिन ',
          'dieases174':
              "कम खुराक वाली एस्पिरिन उन लोगों में दिल के दौरे और स्ट्रोक को रोकने में मदद करती है, जिन्हें इसका खतरा अधिक है",
          'name175': 'लाइमसाइक्लिन',
          'dieases175': "इसका उपयोग संक्रमणों के इलाज के लिए भी किया जाता है",
          'name176': 'मैक्रोगोल',
          'dieases176':
              "मैक्रोगोल (या मैक्रोगोल) कब्ज (मल त्यागने में कठिनाई) के इलाज के लिए एक रेचक दवा है",
          'name177': 'मेबेंडाजोल',
          'dieases177':
              "इसका उपयोग मुख्य रूप से आंत के संक्रमण जैसे थ्रेडवर्म (कभी-कभी पिनवर्म के रूप में जाना जाता है) और अन्य कम आम कृमि संक्रमण (व्हिपवर्म, राउंडवर्म और हुकवर्म) के लिए किया जाता है",
          'name178': 'मेबेवेरिन',
          'dieases178':
              "मेबेवेरिन (कभी-कभी मेबेवेरिन हाइड्रोक्लोराइड भी कहा जाता है) एक प्रकार की दवा है जिसे एंटीस्पास्मोडिक के रूप में जाना जाता है। यह मांसपेशियों की ऐंठन में मदद करती है",
          'name179': 'मेड्रोक्सीप्रोजेस्टेरोन टेबलेट्स',
          'dieases179':
              "इसका उपयोग हार्मोनल स्थितियों के लिए किया जाता है, जिसमें भारी मासिक धर्म, एंडोमेट्रियोसिस, पॉलीसिस्टिक ओवरी सिंड्रोम (पीसीओएस) और रजोनिवृत्ति के लक्षण शामिल हैं",
          'name180': 'मेमनटाइन',
          'dieases180':
              "इसका उपयोग स्मृति हानि के इलाज के लिए किया जाता है जो मनोभ्रंश के मुख्य लक्षणों में से एक है",
          'name181': 'मेसालज़ीन',
          'dieases181':
              "मेसालजीन का उपयोग अल्सरेटिव कोलाइटिस और क्रोहन रोग और अन्य प्रकार की सूजन आंत्र रोग के इलाज के लिए किया जाता है",
          'name182': 'Metformin',
          'dieases182':
              "यह मेटफॉर्मिन आपके शरीर द्वारा इंसुलिन को संभालने के तरीके में सुधार करके आपके रक्त शर्करा के स्तर को कम करता है",
          'name183': 'मेथाडोन',
          'dieases183':
              "यह आपके वापसी के लक्षणों को कम करता है, जैसे कंपकंपी, कंपकंपी और अन्य फ्लू जैसे लक्षण। यह लालसा को रोकने में भी मदद करता है",
          'name184': 'मिथोट्रेक्सेट',
          'dieases184':
              "यह आपके शरीर की प्रतिरक्षा प्रणाली को धीमा कर देता है और सूजन (सूजन) को कम करने में मदद करता है",
          'name185': ' मिथाइलफेनिडेट फॉर एडल्ट ',
          'dieases185':
              "मिथाइलफेनिडेट का उपयोग ध्यान घाटे की सक्रियता विकार (एडीएचडी) के इलाज के लिए किया जाता है",
          'name186': 'मिथाइलफेनिडेट फॉर चिल्ड्रन',
          'dieases186':
              "मिथाइलफेनिडेट दवाओं के एक समूह से संबंधित है, जिन्हें उत्तेजक कहा जाता है। वे मस्तिष्क में गतिविधि बढ़ाकर काम करते हैं",
          'name187': 'मेटोक्लोप्रामिडे',
          'dieases187':
              "इसका उपयोग आपको बीमार महसूस करने या बीमार होने (मतली या उल्टी) को रोकने में मदद करने के लिए किया जाता है",
          'name188': 'मेटोप्रोलोल ',
          'dieases188':
              "आप आमतौर पर अपने लक्षणों के इलाज के लिए इसे अन्य दवाओं के साथ लेंगे",
          'name189': 'मेट्रोनिडाज़ोल',
          'dieases189':
              "इसका उपयोग संक्रमित मसूड़ों और दंत फोड़े सहित त्वचा संक्रमण, रोसैसिया और मुंह के संक्रमण के इलाज के लिए किया जाता है",
          'name190': 'मिराबेग्रोन',
          'dieases190':
              "मिराबेग्रोन एक दवा है जो अतिसक्रिय मूत्राशय के लक्षणों को कम करती है",
          'name191': 'मिर्ताज़ापिन',
          'dieases191':
              "इसका उपयोग अवसाद और कभी-कभी जुनूनी बाध्यकारी विकार (ओसीडी) और चिंता के इलाज के लिए किया जाता है",
          'name192': 'मोलनुपिराविर (लागेवरियो)',
          'dieases192':
              "मोल्नुपिराविर एक एंटीवायरल दवा है जो उस वायरस को बढ़ने और फैलने से रोककर काम करती है जो COVID-19 का कारण बनता है",
          'name193': 'मोमेटासोन फॉर स्किन ',
          'dieases193':
              "मोमेटासोन का उपयोग खुजली, सूजन और सूजन वाली त्वचा के इलाज के लिए किया जाता है",
          'name194': 'मोमेटासोन इन्हेलर',
          'dieases194':
              "इसे प्रिवेंटर इनहेलर कहा जाता है क्योंकि यह आपको लक्षणों से बचाने में मदद करता है",
          'name195': 'मोमेटासोन नेज़ल स्प्रे',
          'dieases195':
              "मोमेटासोन नेज़ल (नाक) स्प्रे का उपयोग एलर्जिक राइनाइटिस के कारण होने वाले सर्दी जैसे लक्षणों के इलाज के लिए किया जाता है",
          'name196': 'मोंटेलुकास्ट',
          'dieases196':
              "यह आमतौर पर तब निर्धारित किया जाता है जब अस्थमा हल्का होता है और इसे बदतर होने से रोका जा सकता है",
          'name197': 'मॉर्फिन',
          'dieases197':
              "इसका उपयोग गंभीर दर्द के इलाज के लिए किया जाता है, उदाहरण के लिए ऑपरेशन या गंभीर चोट के बाद, या कैंसर या दिल के दौरे से दर्द",
          'name198': 'नेप्रोक्सन',
          'dieases198':
              "नेप्रोक्सन एक गैर-स्टेरायडल सूजन रोधी दवा (एनएसएआईडी) है। यह जोड़ों और मांसपेशियों में सूजन (सूजन) और दर्द को कम करता है",
          'name199': 'नेफोपम',
          'dieases199':
              'यह मध्यम दर्द का इलाज करता है, उदाहरण के लिए ऑपरेशन या गंभीर चोट के बाद, दांत दर्द, जोड़ों और मांसपेशियों में दर्द, या कैंसर से दर्द',
          'name200': 'निकोरंडिल',
          'dieases200':
              "निकोरैंडिल एक दवा है जिसका उपयोग एनजाइना के कारण होने वाले सीने के दर्द का इलाज करने और उसे कम करने के लिए किया जाता है",
          'name201': 'निफेडीपीने ',
          'dieases201':
              "निफ़ेडिपिन एक कैल्शियम चैनल अवरोधक दवा है जिसका उपयोग उच्च रक्तचाप (उच्च रक्तचाप) के इलाज के लिए किया जाता है",
          'name202': 'नाइट्रोफ्यूरन्टाइन',
          'dieases202':
              "इसका उपयोग सिस्टिटिस जैसे निचले मूत्र पथ के संक्रमण (यूटीआई) के इलाज और रोकथाम के लिए किया जाता है",
          'name203': 'नोर्ट्रिप्टीलीन',
          'dieases203':
              "इसका उपयोग बच्चों में अवसाद और बिस्तर गीला करने (रात में पेशाब करना) के इलाज के लिए भी किया जाता है",
          'name204': 'निस्टैटिन',
          'dieases204':
              "इसका उपयोग कवक या यीस्ट के कारण होने वाले संक्रमण के इलाज या रोकथाम के लिए किया जाता है",
          'name205': 'एस्ट्रोजन टेबलेट्स , पैच, जेल और स्प्रे',
          'dieases205':
              "इसका उपयोग रजोनिवृत्ति के लक्षणों के इलाज के लिए किया जाता है। यह कमजोर हड्डियों (ऑस्टियोपोरोसिस) को रोकने में भी मदद करता है जो रजोनिवृत्ति के बाद आम है",
          'name206': 'ओलंज़ापाइन',
          'dieases206':
              "ओलंज़ापाइन मानसिक स्वास्थ्य स्थितियों के लक्षणों को प्रबंधित करने में मदद करता है",
          'name207': 'ओलमेसरटन',
          'dieases207':
              "यह आपके रक्तचाप को कम करता है और आपके हृदय के लिए आपके शरीर के चारों ओर रक्त पंप करना आसान बनाता है",
          'name208': 'ओमेप्राज़ोल',
          'dieases208':
              "यह अपच और सीने में जलन और एसिड रिफ्लक्स के इलाज के लिए व्यापक रूप से उपयोग किया जाता है",
          'name209': ' ऑक्सीजन गैस फॉर इंहलातिओं ',
          'dieases209': "एनेस्थेटिक्स एजेंट",
          'name210': 'ओक्सीब्यूटिनिन',
          'dieases210':
              "ऑक्सीब्यूटिनिन एक दवा है जिसका उपयोग अतिसक्रिय मूत्राशय के लक्षणों के इलाज के लिए किया जाता है",
          'name211': 'ऑक्सीकोडोन',
          'dieases211':
              "इसका उपयोग गंभीर दर्द का इलाज करने के लिए किया जाता है, उदाहरण के लिए ऑपरेशन के बाद या गंभीर चोट, या कैंसर से दर्द",
          'name212': 'पैंटोप्राजोल',
          'dieases212':
              "इसका उपयोग सीने में जलन, एसिड रिफ्लक्स और गैस्ट्रो-ओसोफेगल रिफ्लक्स रोग (जीओआरडी) के लिए किया जाता है",
          'name213': 'पेरासिटामोल फॉर एडल्ट्स ',
          'dieases213':
              "पैरासिटामोल एक आम दर्द निवारक दवा है जिसका उपयोग दर्द और दर्द के इलाज के लिए किया जाता है। इसका उपयोग उच्च तापमान को कम करने के लिए भी किया जा सकता है",
          'name214': 'पेरासिटामोल फॉर चिल्ड्रन (कालपोल )',
          'dieases214':
              "इसका उपयोग अक्सर सिरदर्द, पेट दर्द, कान दर्द और सर्दी के लक्षणों के इलाज के लिए किया जाता है",
          'name215': 'पैरोक्सटाइन',
          'dieases215':
              "इसका उपयोग अक्सर अवसाद, और कभी-कभी जुनूनी बाध्यकारी विकार (ओसीडी), घबराहट के दौरे, चिंता या अभिघातजन्य तनाव विकार (पीटीएसडी) के इलाज के लिए किया जाता है",
          'name216': 'पैक्स्लोविड',
          'dieases216':
              "इसका उपयोग शुरुआती सीओवीआईडी ​​-19 संक्रमण का इलाज करने और अधिक गंभीर लक्षणों को रोकने में मदद करने के लिए किया जाता है",
          'name217': 'पेपरमिंट ऑइल ',
          'dieases217':
              "यह पेट में ऐंठन, सूजन और पाद (पेट फूलना) से राहत दिलाने में मदद करता है, खासकर अगर आपको चिड़चिड़ा आंत्र सिंड्रोम (आईबीएस) है",
          'name218': 'पेप्टो-बिस्मोल (बिस्मथ सबसैलिसिलेट)',
          'dieases218':
              "इस दवा का उपयोग सीने में जलन और एसिड रिफ्लक्स, अपच, दस्त और बीमार महसूस करने (मतली) के लिए किया जाता है",
          'name219': 'पेरिंडोप्रिल',
          'dieases219':
              "पेरिंडोप्रिल एक दवा है जिसका उपयोग उच्च रक्तचाप (उच्च रक्तचाप) और हृदय विफलता के इलाज के लिए किया जाता है",
          'name220': 'फेनोक्सिमिथाइलपेनिसिलिन',
          'dieases220':
              "इसका उपयोग कान, छाती, गले और त्वचा संक्रमण सहित जीवाणु संक्रमण के इलाज के लिए किया जाता है",
          'name221': 'फ़िनाइटोइन',
          'dieases221':
              "फ़िनाइटोइन तंत्रिकाओं में विद्युत आवेगों को धीमा करके और दर्द संचारित करने की उनकी क्षमता को कम करके तंत्रिका दर्द से राहत देने में मदद कर सकता है",
          'name222': 'पियोग्लिटाजोन',
          'dieases222':
              "पियोग्लिटाज़ोन आपके शरीर को उत्पादित इंसुलिन का बेहतर उपयोग करने में मदद करके आपके रक्त शर्करा के स्तर को नियंत्रित करने में मदद करता है",
          'name223': 'प्रवासतातीं ',
          'dieases223':
              "यदि आपको उच्च रक्त कोलेस्ट्रॉल का निदान किया गया है तो प्रवास्टैटिन का उपयोग कोलेस्ट्रॉल कम करने के लिए किया जाता है",
          'name224': 'प्री-एक्सपोज़र प्रोफिलैक्सिस (पीआरईपी)',
          'dieases224':
              "प्री-एक्सपोज़र प्रोफिलैक्सिस (पीआरईपी) का उपयोग एचआईवी (मानव इम्युनोडेफिशिएंसी वायरस) होने के जोखिम को कम करने के लिए किया जाता है",
          'name225': 'प्रेडनिसोलोन टेबलेट और ऑइल ',
          'dieases225':
              "यह सूजन (सूजन) को कम करने में मदद करता है और आपकी प्रतिरक्षा प्रणाली को भी शांत कर सकता है",
          'name226': 'प्रीगैबलिन',
          'dieases226':
              "प्रीगैबलिन का उपयोग मिर्गी और चिंता के इलाज के लिए किया जाता है। इसे तंत्रिका दर्द के इलाज के लिए भी लिया जाता है",
          'name227': 'प्रोक्लोरपेरेज़िन',
          'dieases227':
              "प्रोक्लोरपेरेज़िन एक बीमारी-रोधी दवा है। यह आपको बीमार महसूस करने या बीमार होने (मतली या उल्टी) को रोकने में मदद कर सकती है",
          'name228': 'यूट्रोजेस्टन (माइक्रोनाइज्ड प्रोजेस्टेरोन)',
          'dieases228':
              "यूट्रोजेस्टन (माइक्रोनाइज्ड प्रोजेस्टेरोन) एक दवा है जिसमें प्रोजेस्टेरोन नामक हार्मोन होता है। प्रोजेस्टेरोन एक प्रकार का प्रोजेस्टोजेन है जो आपके शरीर द्वारा उत्पादित हार्मोन के समान है",
          'name229': 'प्रोमेथाज़िन (फेनर्गन)',
          'dieases229':
              "इसे नींद लाने वाली (बेहोश करने वाली) एंटीहिस्टामाइन के रूप में जाना जाता है, इसलिए अन्य एंटीहिस्टामाइन की तुलना में इसके आपको नींद का अहसास कराने की अधिक संभावना है",
          'name230': 'प्रोप्रानोलोल',
          'dieases230':
              "इसका उपयोग हृदय की समस्याओं का इलाज करने, चिंता के कुछ लक्षणों में मदद करने और माइग्रेन को रोकने के लिए किया जाता है",
          'name231': 'स्यूडोफेड्रिन (सूडाफेड)',
          'dieases231':
              "स्यूडोएफ़ेड्रिन एक डिकॉन्गेस्टेंट है जो आपकी नाक भरी हुई या अवरुद्ध (नाक की भीड़) होने पर आपको अधिक आसानी से सांस लेने में मदद करता है",
          'name232': 'क्वेटियापाइन',
          'dieases232':
              "क्वेटियापाइन एक दवा है जो मानसिक स्वास्थ्य स्थितियों में मदद करती है",
          'name233': 'रबेप्राज़ोल',
          'dieases233':
              "रेबेप्राजोल आपके पेट में बनने वाले एसिड की मात्रा को कम करता है। इसका व्यापक रूप से सीने में जलन, एसिड रिफ्लक्स और गैस्ट्रो-ओसोफेगल रिफ्लक्स रोग (जीओआरडी) के इलाज के लिए उपयोग किया जाता है",
          'name234': 'रमीप्रील ',
          'dieases234':
              "रामिप्रिल उच्च रक्तचाप (उच्च रक्तचाप) और हृदय विफलता के इलाज के लिए व्यापक रूप से उपयोग की जाने वाली दवा है",
          'name235': 'रेमडेसिविर (वेक्लुरी)',
          'dieases235':
              "इसका उपयोग शुरुआती सीओवीआईडी -19 संक्रमण का इलाज करने और अधिक गंभीर लक्षणों को रोकने में मदद करने के लिए किया जाता है",
          'name236': 'राइसड्रोनेट',
          'dieases236':
              "यदि आपको ऑस्टियोपोरोसिस नामक स्वास्थ्य स्थिति है या होने का खतरा है तो यह मदद कर सकता है",
          'name237': 'रिसपेरीडोन',
          'dieases237':
              "रिसपेरीडोन ऐसी दवा है जो कुछ मानसिक स्वास्थ्य स्थितियों के लक्षणों में मदद करती है",
          'name238': 'रिवरोक्साबैन',
          'dieases238':
              "यह आपके रक्त को आपकी नसों के माध्यम से अधिक आसानी से प्रवाहित करता है। इसका मतलब है कि आपके रक्त में खतरनाक रक्त का थक्का बनने की संभावना कम होगी",
          'name239': 'रोपीनिरोले ',
          'dieases239':
              "इसका उपयोग पार्किंसंस रोग और बेचैन पैर सिंड्रोम के लक्षणों के इलाज के लिए किया जाता है",
          'name240': 'रोसुवास्टेटिन',
          'dieases240':
              "रोसुवास्टेटिन स्टैटिन नामक दवाओं के एक समूह से संबंधित है। यह लीवर पर काम करके इसे कोलेस्ट्रॉल बनाने से रोकता है",
          'name241': 'साल्बुटामोल इनहेलर',
          'dieases241':
              "सालबुटामोल का उपयोग अस्थमा और क्रॉनिक ऑब्सट्रक्टिव पल्मोनरी डिजीज (सीओपीडी) के लक्षणों जैसे कि खांसी, घरघराहट और सांस फूलना महसूस करने के लिए किया जाता है",
          'name242': 'सैक्साग्लिप्टिन',
          'dieases242':
              "शरीर पर्याप्त इंसुलिन नहीं बनाता है, या जो इंसुलिन बनाता है वह ठीक से काम नहीं करता है। इससे उच्च रक्त शर्करा स्तर (हाइपरग्लेसेमिया) हो सकता है",
          'name243': 'सेन्ना',
          'dieases243':
              "इसका उपयोग मलत्याग में कठिनाई (कब्ज) के इलाज के लिए किया जाता है। यह आपके पेट की मांसपेशियों को उत्तेजित करके काम करता है",
          'name244':
              'अनुक्रमिक संयुक्त हार्मोन रिप्लेसमेंट थेरेपी (एचआरटी) टेबलेट्स और पैच',
          'dieases244':
              "अनुक्रमिक संयुक्त हार्मोन रिप्लेसमेंट थेरेपी (एचआरटी) एक दवा है जिसमें हार्मोन एस्ट्रोजन और प्रोजेस्टोजन होते हैं। इसका उपयोग रजोनिवृत्ति के लक्षणों के इलाज के लिए किया जाता है",
          'name245': 'सेर्टालाइन',
          'dieases245':
              "इसका उपयोग अक्सर अवसाद के इलाज के लिए किया जाता है, और कभी-कभी घबराहट के दौरे, जुनूनी बाध्यकारी विकार (ओसीडी) और अभिघातजन्य तनाव विकार (पीटीएसडी) के इलाज के लिए भी किया जाता है",
          'name246': 'सिल्डेनाफिल (वियाग्रा)',
          'dieases246':
              "सिल्डेनाफिल का उपयोग कभी-कभी फुफ्फुसीय उच्च रक्तचाप (फेफड़ों को आपूर्ति करने वाली रक्त वाहिकाओं में उच्च रक्तचाप) के इलाज के लिए भी किया जाता है",
          'name247': 'सिमेटिकोन',
          'dieases247':
              "इसका उपयोग पादने (पेट फूलना), फंसी हुई हवा और सूजन के इलाज के लिए किया जाता है, हालांकि हम निश्चित नहीं हो सकते कि यह वास्तव में इन लक्षणों के लिए काम करता है या नहीं",
          'name248': 'सिमवासततिं ',
          'dieases248':
              "यदि आपको उच्च रक्त कोलेस्ट्रॉल का निदान किया गया है तो सिम्वास्टैटिन का उपयोग कोलेस्ट्रॉल कम करने के लिए किया जाता है",
          'name249': 'सोडियम क्रोमोग्लिकेट कैप्सूल',
          'dieases249':
              "सोडियम क्रोमोग्लिकेट कैप्सूल एंटी-एलर्जी नामक दवाओं के समूह का हिस्सा हैं। इनका उपयोग भोजन से होने वाली एलर्जी के इलाज के लिए किया जाता है",
          'name250': 'सोडियम क्रोमोग्लिकेट आई ड्रॉप',
          'dieases250':
              "उनका उपयोग एलर्जिक नेत्रश्लेष्मलाशोथ के इलाज के लिए किया जाता है, जो हे फीवर, घरेलू कण और अन्य एलर्जी से उत्पन्न होने वाली स्थिति है",
          'name251': 'सोडियम वैल्प्रोएट',
          'dieases251':
              'सोडियम वैल्प्रोएट का उपयोग मिर्गी और द्विध्रुवी विकार के इलाज के लिए किया जाता है',
          'name252': 'सोलिफ़ेनासिन',
          'dieases252':
              "सोलिफ़ेनासिन एक दवा है जिसका उपयोग अतिसक्रिय मूत्राशय के लक्षणों के इलाज के लिए किया जाता है",
          'name253': 'सोटोलोल',
          'dieases253':
              "इसका उपयोग आलिंद फिब्रिलेशन और अन्य स्थितियों के इलाज के लिए किया जाता है जो अनियमित दिल की धड़कन (अतालता) का कारण बनती हैं",
          'name254': 'सोट्रोविमैब (ज़ेवुडी)',
          'dieases254':
              "सोट्रोविमैब एक जैविक दवा है। इसे एक न्यूट्रलाइज़िंग मोनोक्लोनल एंटीबॉडी (nMAb) के रूप में भी जाना जाता है। इसका उपयोग COVID-19 के इलाज के लिए किया जाता है",
          'name255': 'स्पैरोनोलाक्टोंन',
          'dieases255':
              "स्पाइरोनोलैक्टोन एक प्रकार की दवा है जिसे मूत्रवर्धक कहा जाता है। इन दवाओं को कभी-कभी 'पानी की गोलियाँ' भी कहा जाता है क्योंकि वे आपको अधिक पेशाब करवाती हैं",
          'name256': 'सुल्फासलजीने',
          'dieases256':
              "सल्फासालजीन का उपयोग अल्सरेटिव कोलाइटिस और क्रोहन रोग, और अन्य प्रकार की सूजन आंत्र रोग के इलाज के लिए किया जाता है",
          'name257': 'सुमाट्रिप्टान',
          'dieases257':
              "सुमैट्रिप्टन माइग्रेन और क्लस्टर सिरदर्द के इलाज के लिए एक दवा है। यह इन स्थितियों को नहीं रोकता है",
          'name258': 'तडालफिल',
          'dieases258':
              "इसका उपयोग कभी-कभी फुफ्फुसीय उच्च रक्तचाप (फेफड़ों को आपूर्ति करने वाली रक्त वाहिकाओं में उच्च रक्तचाप) के इलाज के लिए भी किया जाता है",
          'name259': 'तमसुलोसिन',
          'dieases259':
              "इसका उपयोग बढ़े हुए प्रोस्टेट (सौम्य प्रोस्टेट वृद्धि) के लक्षणों वाले पुरुषों के इलाज के लिए किया जाता है। इसे कभी-कभी गुर्दे की पथरी और प्रोस्टेटाइटिस के इलाज के लिए भी लिया जाता है",
          'name260': 'टेमाजेपाम',
          'dieases260':
              "इसका उपयोग नींद की समस्याओं (अनिद्रा) के इलाज के लिए किया जाता है",
          'name261': 'टेरबिनाफाइन',
          'dieases261':
              "इसका उपयोग कवक (खमीर) के कारण होने वाले त्वचा संक्रमण के इलाज के लिए किया जाता है, जिसमें शामिल हैं",
          'name262': 'थियामिन (विटामिन बी1)',
          'dieases262':
              "थियामिन भोजन को ऊर्जा में बदलने और तंत्रिका तंत्र को स्वस्थ रखने में मदद करता है",
          'name263': 'टिबोलोन',
          'dieases263':
              "टिबोलोन रजोनिवृत्ति के लक्षणों में सुधार करने में मदद करता है, जैसे गर्म फ्लश, कम मूड और योनि का सूखापन या जलन",
          'name264': 'टिकाग्रेलर',
          'dieases264':
              "यदि आपको रक्त के थक्कों का खतरा बढ़ गया है तो टिकाग्रेलर लेने से रक्त के थक्कों को रोकने में मदद मिल सकती है",
          'name265': 'टिमोलोल आई ड्रॉप',
          'dieases265':
              "आपकी आंख के अंदर बढ़ा हुआ दबाव आपकी ऑप्टिक तंत्रिका को नुकसान पहुंचा सकता है। इससे दृष्टि हानि या अंधापन हो सकता है",
          'name266': 'टिमोलोल टेबलेट ',
          'dieases266':
              "यदि आपको उच्च रक्तचाप है, तो टिमोलोल लेने से भविष्य में हृदय रोग, या दिल के दौरे को रोकने में मदद मिल सकती है",
          'name267': 'टियोट्रोपियम इन्हेलर',
          'dieases267':
              "टियोट्रोपियम इनहेलर का उपयोग क्रॉनिक ऑब्सट्रक्टिव पल्मोनरी डिजीज (सीओपीडी) और कभी-कभी अस्थमा जैसे खांसी, घरघराहट और सांस फूलना जैसे लक्षणों को रोकने के लिए किया जाता है",
          'name268': 'टियोट्रोपियम इन्हेलर',
          'dieases268':
              "यह आपके फेफड़ों की मांसपेशियों को आराम देकर और आपके वायुमार्ग को चौड़ा करके काम करता है। इससे आपके लिए सांस लेना आसान हो जाता है",
          'name269': 'टॉलटेरोडाइन',
          'dieases269':
              "इसका उपयोग बच्चों में बिस्तर गीला करने (रात में पेशाब करने की आदत) के इलाज के लिए भी किया जाता है",
          'name270': 'टोपिरामेट',
          'dieases270':
              "टोपिरामेट मिर्गी के इलाज के लिए इस्तेमाल की जाने वाली दवा है। इन्हें मिर्गी-रोधी दवाएं भी कहा जाता है",
          'name271': 'ट्रामाडोल',
          'dieases271':
              "इसका उपयोग मध्यम से गंभीर दर्द के इलाज के लिए किया जाता है, उदाहरण के लिए ऑपरेशन या गंभीर चोट के बाद।",
          'name272': 'ट्रेनेक्ज़ामिक एसिड',
          'dieases272':
              "यह आपके रक्त को जमने में मदद करता है और इसका उपयोग नाक से खून बहने और भारी मासिक धर्म के लिए किया जाता है",
          'name273': 'ट्रैस्टुज़ुमैब (हर्सेप्टिन)',
          'dieases273':
              "इसका उपयोग महिलाओं में स्तन कैंसर, पुरुषों में स्तन कैंसर, ग्रासनली कैंसर और पेट के कैंसर सहित कुछ प्रकार के कैंसर के इलाज के लिए किया जाता है",
          'name274': 'त्रज़ोदोन',
          'dieases274':
              "इसका उपयोग अवसाद, चिंता, या अवसाद और चिंता के संयोजन के इलाज के लिए किया जाता है",
          'name275': 'ट्राइमेथोप्रिम',
          'dieases275':
              "इसका उपयोग सिस्टिटिस जैसे मूत्र पथ के संक्रमण (यूटीआई) के इलाज और रोकथाम के लिए किया जाता है",
          'name276': 'यूट्रोजेस्टन (माइक्रोनाइज्ड प्रोजेस्टेरोन)',
          'dieases276':
              "यूट्रोजेस्टन (माइक्रोनाइज्ड प्रोजेस्टेरोन) एक दवा है जिसमें प्रोजेस्टेरोन नामक हार्मोन होता है। प्रोजेस्टेरोन एक प्रकार का प्रोजेस्टोजेन है जो आपके शरीर द्वारा उत्पादित हार्मोन के समान है",
          'name277': 'वैजिनल  एस्ट्रोजन ',
          'dieases277':
              "इसका उपयोग रजोनिवृत्ति के दौरान होने वाली योनि के सूखेपन और जलन के इलाज के लिए किया जाता है",
          'name278': 'वैल्प्रोइक एसिड',
          'dieases278':
              "वैल्प्रोइक एसिड का उपयोग आमतौर पर द्विध्रुवी विकार के इलाज के लिए किया जाता है। इसका उपयोग माइग्रेन को रोकने के लिए भी किया जा सकता है।",
          'name279': 'वाल्सार्टन',
          'dieases279':
              "यह आपके रक्तचाप को कम करता है और आपके हृदय के लिए आपके शरीर के चारों ओर रक्त पंप करना आसान बनाता है",
          'name280': 'चैंपिक्स (वैरेनिकलाइन)',
          'dieases280':
              "यह लंबे समय तक अनुपलब्ध हो सकता है। यह अभी तक ज्ञात नहीं है कि यह भविष्य में फिर से उपलब्ध होगा या नहीं",
          'name281': 'वेनलाफैक्सिन',
          'dieases281':
              "इसका उपयोग अवसाद और कभी-कभी चिंता और घबराहट के दौरे के इलाज के लिए किया जाता है",
          'name282': 'वेरापामिल',
          'dieases282':
              "इसका उपयोग उच्च रक्तचाप (उच्च रक्तचाप) के इलाज के लिए भी किया जाता है",
          'name283': 'वारफारिन',
          'dieases283':
              "यह आपके रक्त को आपकी नसों में अधिक आसानी से प्रवाहित करता है",
          'name284': 'ज़ोल्पीडेम',
          'dieases284':
              "यह आपको जल्दी सो जाने में मदद करता है और रात के दौरान आपके जागने की संभावना कम कर देता है। यह आपके मस्तिष्क में गामा-एमिनोब्यूट्रिक एसिड (जीएबीए) नामक एक शांत रसायन को प्रभावित करके काम करता है",
          'name285': 'ज़ोपिक्लोन',
          'dieases285':
              "यह आपको जल्दी सो जाने में मदद करता है, और आपको रात में जागने से रोकने में भी मदद करता है",
          'name286': 'डिक्लोफेनाक टैबलेट 50 मि.ग्रा',
          'dieases286':
              "एनाल्जेसिक, ज्वरनाशक, गैर-स्टेरायडल सूजन-रोधी दवाएं, गठिया के इलाज के लिए इस्तेमाल की जाने वाली दवाएं और रूमेटोइड विकारों में इस्तेमाल होने वाले रोग संशोधित करने वाले एजेंट",
          'name287': 'पैरासिटामोल सिरप 125 मिलीग्राम/5 मि.ली',
          'dieases287':
              "एनाल्जेसिक, ज्वरनाशक, गैर-स्टेरायडल सूजन-रोधी दवाएं, गठिया के इलाज के लिए इस्तेमाल की जाने वाली दवाएं और रूमेटोइड विकारों में इस्तेमाल होने वाले रोग संशोधित करने वाले एजेंट",
          'name288': 'लेवोसेटिरिज़िन 5एमजी टैबलेट',
          'dieases288':
              "एंटी-एलर्जी और एनाफिलेक्सिस में उपयोग की जाने वाली दवाएं",
          'name289': 'हाइड्रोकार्टिसोन सक्सिनेट इंजेक्शन 100 मिलीग्राम',
          'dieases289':
              "एंटी-एलर्जी और एनाफिलेक्सिस में उपयोग की जाने वाली दवाएं",
          'name290': 'डायथाइलकार्बामाज़िन टैबलेट 100 मिलीग्राम',
          'dieases290': "फ़ाइलेरिया रोधी",
          'name291': 'फ्लुकोनाज़ोल 150एमजी टैबलेट',
          'dieases291': "एंटी-फंगल दवाएं",
          'name292': ' हाइड्रोक्लोरोथियाजाइड टैबलेट 12.5 मिलीग्राम',
          'dieases292': "(सब्लिंगुअल) उच्चरक्तचापरोधी औषधियाँ",
          'name293': ' सिल्वर सल्फाडियाज़िन क्रीम 1%',
          'dieases293': "(सब्लिंगुअल) उच्चरक्तचापरोधी औषधियाँ",
          'name294': 'कैलेमाइन लोशन',
          'dieases294': "(सब्लिंगुअल) उच्चरक्तचापरोधी औषधियाँ",
          'name295': 'बेंजाइल बेंजोएट मरहम/लोशन',
          'dieases295': "(सब्लिंगुअल) उच्चरक्तचापरोधी औषधियाँ",
          'name296': 'पोटेशियम परमैंगनेट 0.1%',
          'dieases296': "(सब्लिंगुअल) उच्चरक्तचापरोधी औषधियाँ",
          'name297': 'जिंक ऑक्साइड क्रीम 10%',
          'dieases297': "(सब्लिंगुअल) उच्चरक्तचापरोधी औषधियाँ",
          'name298': ' एथिल अल्कोहल (विकृत) घोल 70%',
          'dieases298': "कीटाणुनाशक और एंटीसेप्टिक्स",
          'name299': 'हाइड्रोजन पेरोक्साइड सलूशन 6%',
          'dieases299': "कीटाणुनाशक और एंटीसेप्टिक्स",
          'name300': 'बी कॉम्प्लेक्स टैबलेट',
          'dieases300': "विटामिन और खनिज",
          'name301': 'विटामिन ए ओरल लिक्विड 100000IU/एमएल',
          'dieases301': "विटामिन और खनिज",
          'name302': 'पाइरिडोक्सिन टैबलेट 25 मि.ग्रा',
          'dieases302': "विटामिन और खनिज",
          'name303': 'कोलेकैल्सिफेरॉल टैबलेट 60000 आईयू',
          'dieases303': "विटामिन और खनिज",
          'name304': 'कैल्शियम कार्बोनेट टैबलेट 500 मिलीग्राम',
          'dieases304': "विटामिन और खनिज",
          'name305': 'सोडियम क्लोराइड इंजेक्शन 0.9%',
          'dieases305':
              "पानी, इलेक्ट्रोलाइट गड़बड़ी और एसिड-बेस गड़बड़ी को ठीक करने वाले समाधान",
          'name306': 'डेक्सट्रोज़ 5%',
          'dieases306':
              "पानी, इलेक्ट्रोलाइट गड़बड़ी और एसिड-बेस गड़बड़ी को ठीक करने वाले समाधान",
          'name307': 'नार्मल सलीने ड्रॉप ',
          'dieases307': "श्वसन तंत्र पर कार्य करने वाली औषधियाँ",
          'name308': ' रेबीज वैक्सीन ',
          'dieases308': "टीके",
          'name309': 'लेवोथायरोक्सिन टैबलेट 50 एमसीजी',
          'dieases309': "थायराइड और एंटी-थायराइड दवाएं",
          'name310': 'ग्लिबेंक्लामाइड टैबलेट 2.5 मिलीग्राम',
          'dieases310': "मधुमेह मेलिटस में प्रयुक्त दवाएं",
          'name311': 'जिंक सल्फेट सिरप',
          'dieases311': "गैस्ट्रोइंटेस्टाइनल दवाएं",
          'name312': 'ओरल रिड्रेशन सॉल्ट्स (ओरस )',
          'dieases312': "गैस्ट्रोइंटेस्टाइनल दवाएं",
          'name313': 'सिप्रोफ्लोक्सासिन ड्रॉप्स 0.3 %',
          'dieases313': "कान, नाक और गले की दवाएँ",
          'name314': ' एथिल अल्कोहल (डेनटुरेड़ ) सोलुशन 70%',
          'dieases314': "कीटाणुनाशक और एंटीसेप्टिक्स",
          'name315': 'हाइड्रोजन पेरोक्साइड सोलुशन 6%',
          'dieases315': "कीटाणुनाशक और एंटीसेप्टिक्स",
          'sortbillby': 'बिल को क्रमबद्ध करें',
        },
        'gu_IN': {
          'appName': 'કેર ઍન્ડ ક્યોર ',
          'rule1_1': 'સંભાળ અને ઉપચારમાં આપનું સ્વાગત છે',
          'rule1_2':
              'એપ્લિકેશનનો ઉપયોગ કરવા માટે તૈયાર છો? જમણેથી ડાબે સ્વાઇપ કરો અને એપ્લિકેશનની મૂળભૂત બાબતો શીખો.',
          'rule2':
              'માહિતી : આ અહીં માહિતી બોક્સ છે તમે લોગિન વિભાગ કેવી રીતે કામ કરવું તે જાણો છો.\n2 : આ પેશન્ટ સાઇડ લોગિન એક્ટિવિટી છે.\n3 : આ ડોક્ટર સાઇડ લોગિન એક્ટિવિટી છે.\n4 : આ હોસ્પિટલ સાઇડ લૉગિન એક્ટિવિટી છે.',
          'rule3': 'કૃપા કરીને તમારી પસંદગીની ભાષા પસંદ કરો',
          'select': 'ભાષા પસંદ કરો',
          'rule4':
              'ડેસ્ક-કોડ એડમિન અને વપરાશકર્તાની ગોપનીયતા વિશે ચિંતિત છે. તેથી ગોપનીયતા સંબંધિત ભૂલી જાઓ અને સરળ અને ઉત્તમ એપ્લિકેશનનો ઉપયોગ કરો.',
          'loginInfo':
              'તમારા ફીલ્ડ મુજબ લોગિન કરો \n\n* દર્દી લોગિન ક્વેરી \nપહેલા લોગિન કરો અને દર્દી ફક્ત પોતાનો ડેટા જોઈ શકશે. \n\n* હોસ્પિટલ લોગિન ક્વેરી \nજો તમારી પાસે તે માટે સંભાળ અને ઉપચાર નો ભાગ ન હોય તો પહેલા નોંધણી કરો હોસ્પિટલ લોગિન બટન પર જાઓ અને નોંધણી કરો. હવે તમે સંભાળ અને ઉપચાર નો ભાગ છો. તમે એડમિન છો અને તમામ ડેટા હેન્ડલ કરો છો. \n\n* ડૉક્ટર લૉગિન ક્વેરી \nડૉક્ટર માત્ર પોતાનો ડેટા જોઈ શકે છે અને પોતાનો ડેટા અપડેટ કરી શકે છે ડૉક્ટરની વિગતો માત્ર હોસ્પિટલ એડમિન સ્ટાફ દ્વારા ઉમેરવામાં આવશે. \n\nઅહીં તમામ વિગતોને હેન્ડલ કરવા માટે હોસ્પિટલ એડમિન મુખ્ય છે. હોસ્પિટલ ડૉક્ટરની વિગતો, દર્દીની વિગતો વગેરે ઉમેરી શકે છે...',
          'sideName': 'દર્દી, હોસ્પિટલ અને ડોક્ટર',
          'otpVerification': 'ઓટીપી ચકાસણી',
          'otpSend': 'કૃપા કરીને તમને મોકલેલ ઓટીપી દાખલ કરો',
          'otpVeriInfo':
              'અમે તમને આ મોબાઈલ નંબર પર \n વન ટાઈમ પાસવર્ડ મોકલીશું',
          'otpNotRecieve': 'ઓટીપી પ્રાપ્ત થયો નથી?',
          'otpResend': 'ઓટીપી ફરીથી મોકલો',
          'patientLogin': 'દર્દી લોગિન',
          'doctorLogin': 'ડૉક્ટર લૉગિન',
          'hospitalLogin': 'હોસ્પિટલ લૉગિન',
          'notHaveAccount': 'તમારી પાસે ખાતું નથી?',
          'register': 'નોંધણી કરો',
          'getOtp': 'ઓટીપી મેળવો',
          'start': 'શરૂઆત',
          'next': 'આગળ',
          'previous': 'અગાઉના',
          'verify': 'ચકાસો',
          'signupTitle': 'ચાલો તમારું એકાઉન્ટ બનાવીએ....',
          'hospitalName': 'હોસ્પિટલનું નામ',
          'hospitalMNumber': 'હોસ્પિટલ મોબાઈલ નંબર',
          'hospitalEmail': 'હોસ્પિટલ ઈમેલ',
          'hospitalAddress': 'હોસ્પિટલનું સરનામું',
          'hospitalUpiId': 'હોસ્પિટલ યુપીઆઈ આઈડી',
          'password': 'પાસવર્ડ',
          'signupButton': 'અત્યારે જોડવ',
          'hospital': 'હોસ્પિટલ',
          'certificate': 'પ્રમાણપત્ર',
          'addImage': 'છબી ઉમેરો',
          'addImageInfo':
              'હોસ્પિટલની ચકાસણી માટે કૃપા કરીને તમારી દસ્તાવેજની છબી જોડો',
          'done': 'થઈ ગયું',
          'select file': 'ફાઇલ પસંદ કરો',
          'upload file': 'ફાઈલ અપલોડ કરો',
          'register error': 'તમારો ફોન નંબર હોસ્પિટલ સાથે રજીસ્ટર નથી',
          'tfError': 'આ ફીલ્ડ આવશ્યક છે',
          'userAdded': 'વપરાશકર્તા ઉમેરાયેલ',
          'faiAddUser': 'વપરાશકર્તા ઉમેરવામાં નિષ્ફળ',
          'userDeleted': 'વપરાશકર્તા કાઢી નાખ્યો',
          'faiDelUser': 'વપરાશકર્તાને કાઢી નાખવામાં નિષ્ફળ',
          'userUpdated': 'વપરાશકર્તા અપડેટ',
          'faiUpdUser': 'ડેટા અપડેટ કરવામાં નિષ્ફળ',
          'verfiComp': 'ચકાસણી પૂર્ણ',
          'profile': 'પ્રોફાઇલ',
          'dashBoard': 'ડેશબોર્ડ',
          'logout': 'લૉગ આઉટ',
          'confirm': 'ખાતરી કરો',
          'logoutAlert': 'શું તમે લોગઆઉટ કરવા માંગો છો?',
          'no': 'ના',
          'yes': 'હા',
          'disease': 'રોગ',
          'payableAmount': 'ચૂકવવાપાત્ર રકમ',
          'update': 'અપડેટ',
          'search': 'શોધો',
          'patientName': 'દર્દીનું નામ',
          'mobileNo': 'મોબાઈલ નમ્બર',
          'email': 'ઈમેલ',
          'gender': 'જાતિ',
          'bloodGroup': 'બ્લડ ગ્રુપ',
          'age': 'ઉંમર',
          'address': 'સરનામું',
          'admitDate': 'એડમિન તારીખ',
          'addDP': 'રોગ અને ચુકવણી ઉમેરો',
          'doctorName': 'ડોક્ટરનું નામ',
          'adharNumber': 'આધાર નંબર',
          'specialist': 'નિષ્ણાત',
          'qualification': 'લાયકાત',
          'payment': 'ચુકવણી',
          'medicine': 'દવા',
          'payAmount': 'રકમ ચૂકવો',
          'roomNo': 'રૂમ નં.',
          'wardNo': 'વોર્ડ નં.',
          'payInfo1': 'સરળ રીતે પેમેન્ટ કરો',
          'payInfo2': 'તમારું પેમેન્ટ ઓન વે...',
          'enterAmount': 'રકમ દાખલ કરો',
          'slidePay': 'ચુકવણી કરવા માટે સ્લાઇડ કરો',
          'payError':
              'કૃપા કરીને પહેલા ચૂકવવાપાત્ર રકમ તપાસો અથવા તે તમારી ચૂકવણીની રકમ કરતા વધારે નથી',
          'fullName': 'પૂરું નામ',
          'phIsReq': 'ફોન નંબર જરૂરી છે',
          'entInLength': 'લંબાઈમાં નંબર દાખલ કરો',
          'sGender': 'તમારી જાતિ પસંદ કરો',
          'male': 'પુરુષ',
          'female': 'સ્ત્રી',
          'validRange': 'માન્ય ઉંમર દાખલ કરો',
          'ageIsReq': 'ઉંમર જરૂરી છે',
          'emailIsReq': 'ઇમેઇલ આવશ્યક છે',
          'validEmail': 'ઇમેઇલ એ માન્ય ફોર્મેટ નથી',
          'aadharIsReq': 'આધાર નંબર જરૂરી છે',
          'validAadhar': 'માન્ય આધાર નંબર દાખલ કરો',
          'passReq': 'પાસવર્ડ અનિવાર્ય છે',
          'validPass': 'ન્યૂનતમ 6 અક્ષરનો પાસવર્ડ જરૂરી છે',
          'profilePick': 'પ્રોફાઇલ ચૂંટો',
          'submit': 'સબમિટ કરો',
          'staffSection': 'સ્ટાફ વિભાગ',
          'fire': 'સ્થગિત કરવા',
          'name': 'નામ',
          'sortStaff': 'સૉર્ટ સ્ટાફ',
          'by': 'દ્વારા',
          'upiid': 'યુપીઆઈ આઈડી',
          'refDoc': 'રેફરન્સ ડોક્ટર પસંદ કરો',
          'sQualification': 'તમારી લાયકાત પસંદ કરો',
          'sBloodGroup': 'તમારું બ્લડગ્રુપ પસંદ કરો',
          'sortPatient': 'દર્દીને આ પ્રમાણે સૉર્ટ કરો',
          'payPrnd': 'પેમેન્ટ બાકી',
          'payComp': 'પેમેન્ટ પૂર્ણ',
          'welcome': 'સ્વાગત',
          'staff': 'સ્ટાફ',
          'patient': 'પેશન્ટ',
          'doctor': 'ડોક્ટર',
          'bill': 'બિલ',
          'home': 'હોમ',
          'patientDetails': 'પેશન્ટની વિગતો',
          'staffDetail': 'સ્ટાફ વિગતો',
          'doctorDetail': 'ડોક્ટર વિગતો',
          'sortDocBy': 'ડૉક્ટર દ્વારા સૉર્ટ કરો',
          'twoFactor': 'અતિરિક્ત સુરક્ષા',
          'on': 'ચાલુ',
          'off': 'બંધ',
          'deviceSupport': 'આ ઉપકરણ સપોર્ટેડ નથી',

          //medicine data
          'name1': 'અકીકલોવિરા(ઝોવિરક્સ)',
          'dieases1':
              "એસાયક્લોવીર શરદી ચાંદા, ચિકનપોક્સ, દાદર અને અન્ય હર્પીસ વાયરસ ચેપની સારવાર શોધો, અને તે કેવી રીતે લેવું.",

          'name2': 'એક્રીવાસ્ટાઇન',
          'dieases2':
              "તેનો ઉપયોગ પરાગરજ તાવ, નેત્રસ્તર દાહ (લાલ, ખંજવાળવાળી આંખો), ખરજવું અને શિળસ (અર્ટિકેરિયા) ની સારવાર માટે થાય છે.",
          'name3': 'અદાલિમુમબ',
          'dieases3':
              "તેનો ઉપયોગ તમારી રોગપ્રતિકારક શક્તિ પર કાર્ય કરીને સોજો (બળતરા) ઘટાડવા માટે થાય છે",
          'name4': 'એલેન્ડ્રોનિક એસિડ',
          'dieases4':
              "એલેન્ડ્રોનિક એસિડ એક પ્રકારની દવા છે જેને બિસ્ફોસ્ફોનેટ કહેવાય છે. તમારા હાડકાંને શક્ય તેટલું મજબૂત રહેવામાં મદદ કરવા માટે બિસ્ફોસ્પોનેટ્સ સૂચવવામાં આવે છે.",
          'name5': 'એલોપ્યુરીનોલ',
          'dieases5':
              "એલોપ્યુરીનોલ એ તમારા લોહીમાં યુરિક એસિડના સ્તરને ઘટાડવા માટે વપરાતી દવા છે.",
          'name6': 'એલોગ્લિપ્ટિન',
          'dieases6':
              "એલોગ્લિપ્ટિન એવા લોકો માટે સૂચવવામાં આવે છે જેમની પાસે હજી પણ હાઈ બ્લડ સુગર છે, તેમ છતાં તેઓ યોગ્ય આહાર અને નિયમિત વ્યાયામ કરે છે.",
          'name7': ' એમીટ્રિપ્ટીલાઇન ફોર ડિપ્રેશન',
          'dieases7':
              "એમીટ્રિપ્ટીલાઇન એ એન્ટીડિપ્રેસન્ટ દવા છે. તેનો ઉપયોગ નીચા મૂડ અને ડિપ્રેશનની સારવાર માટે થાય છે.",
          'name8': 'એમીટ્રિપ્ટીલાઇન ફોર પેઈન માઈગ્રેન ',
          'dieases8':
              "એમીટ્રિપ્ટીલાઇન નો ઉપયોગ ડિપ્રેશનની સારવાર માટે થાય છે. દુખાવાની સારવાર માટે વપરાતા ડોઝ ડિપ્રેશનના ડોઝ કરતા ઓછા હોય છે.",
          'name9': 'એમલોડિપિન',
          'dieases9':
              "અમલોડિપિન હાઈ બ્લડ પ્રેશરની સારવાર કરે છે અને હૃદય રોગને રોકવામાં મદદ કરે છે",
          'name10': 'એમોક્સિસિલિન',
          'dieases10':
              "તેનો ઉપયોગ બેક્ટેરિયલ ચેપની સારવાર માટે થાય છે, જેમ કે છાતીમાં ચેપ (ન્યુમોનિયા સહિત) અને દાંતના ફોલ્લાઓ",
          'name11': 'એનાસ્ટ્રોઝોલ',
          'dieases11':
              "એનાસ્ટ્રોઝોલ એક પ્રકારની હોર્મોન સારવાર છે. તે તમારા શરીરમાં એસ્ટ્રોજન હોર્મોન્સનું સ્તર ઘટાડીને કામ કરે છે.",
          'name12': 'એન્ટીડિપ્રેસન્ટ્સ',
          'dieases12':
              "તેઓ મગજમાં ન્યુરોટ્રાન્સમીટર તરીકે ઓળખાતા રસાયણોના સ્તરને વધારીને કામ કરે છે. સેરોટોનિન અને નોરેડ્રેનાલિન જેવા અમુક ન્યુરોટ્રાન્સમીટર મૂડ અને લાગણી સાથે જોડાયેલા છે.",
          'name13': 'એપિક્સાબન',
          'dieases13':
              "તેનો ઉપયોગ લોહીના ગંઠાઈ જવાને કારણે સ્વાસ્થ્ય સમસ્યાઓ ધરાવતા લોકોની સારવાર માટે થાય છે",
          'name14': 'એરિપીપ્રાઝોલ',
          'dieases14':
              "એરિપીપ્રાઝોલ એ એક દવા છે જે માનસિક સ્વાસ્થ્યની સ્થિતિ જેમ કે સ્કિઝોફ્રેનિયામાં મદદ કરે છે, જ્યાં તમે એવી વસ્તુઓ જોઈ, સાંભળી અથવા અનુભવી શકો છો જે ત્યાં નથી",
          'name15': 'એસ્પિરિન (એસિટિલસાલિસિલિક એસિડ) ટેબ્લેટ 75 મિલિગ્રામ',
          'dieases15':
              "એનાલજેક્સ, એન્ટિપ્રાયરેટિક્સ, નોન-સ્ટીરોડલ બળતરા વિરોધી દવાઓ, સંધિવાની સારવાર માટે વપરાતી દવાઓ અને સંધિવાની વિકૃતિઓમાં ઉપયોગમાં લેવાતા રોગને સુધારનાર એજન્ટો",
          'name16': 'એકટીવેટેડ ચારકોલ',
          'dieases16': "વિરોધી ડોટ્સ અને ઝેરમાં વપરાતા અન્ય પદાર્થો",
          'name17': ' આલ્બેન્ડાઝોલ ટેબ્લેટ 400 મિલિગ્રામ',
          'dieases17': "આંતરડાની એન્થેલ્મિન્ટિક્સ",
          'name18': 'એમોક્સિસિલિન કેપ્સ્યુલ 250 મિલિગ્રામ',
          'dieases18': "એન્ટી-બેક્ટેરિયલ",
          'name19': 'એસ્કોર્બિક એસિડ (વિટામિન સી) ટેબ્લેટ 100 મિલિગ્રામ',
          'dieases19': "વિટામિન અને ખનિજો",
          'name20': 'એસ્પિરિન ફોર પેઈન રિલીફ ',
          'dieases20':
              "તેનો ઉપયોગ શરદી અને ફલૂ જેવા લક્ષણોની સારવાર માટે અને ઊંચા તાપમાનને ઘટાડવા માટે પણ થઈ શકે છે.",
          'name21': 'લો-ડોઝ અસ્પીરીંગ',
          'dieases21':
              "તે ઓછી માત્રાની એસ્પિરિન છે જે લોકોમાં હૃદયરોગના હુમલા અને સ્ટ્રોકને રોકવામાં મદદ કરે છે જેઓનું જોખમ વધારે છે. એસ્પિરિનને એસિટિલસાલિસિલિક એસિડ તરીકે પણ ઓળખવામાં આવે છે.",
          'name22': 'એટેનોલોલ',
          'dieases22':
              "એટેનોલોલ એ બીટા બ્લોકર દવા છે, જેનો ઉપયોગ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) અને અનિયમિત ધબકારા (એરિથમિયા) ની સારવાર માટે થાય છે.",
          'name23': 'એટોર્વાસ્ટેટિન',
          'dieases23':
              "જો તમને હાઈ બ્લડ કોલેસ્ટ્રોલ હોવાનું નિદાન થયું હોય અને હાર્ટ એટેક અને સ્ટ્રોક સહિત હૃદયરોગને રોકવા માટે તેનો ઉપયોગ થાય છે.",
          'name24': 'એઝેથિઓપ્રિન',
          'dieases24':
              "એઝેથિઓપ્રિન એક પ્રકારની દવા છે જેને ઇમ્યુનોસપ્રેસન્ટ કહેવાય છે. ઇમ્યુનોસપ્રેસન્ટ્સ તમારા શરીરની રોગપ્રતિકારક શક્તિને શાંત અથવા નિયંત્રિત કરવામાં મદદ કરે છે.",
          'name25': 'એઝિથ્રોમાસીન',
          'dieases25':
              "મેક્રોલાઇડ એન્ટિબાયોટિક્સ ચેપનું કારણ બનેલા બેક્ટેરિયાને મારી નાખવાનું કામ કરે છે અને છાતીના ચેપને રોકવા માટે લાંબા ગાળાનો ઉપયોગ પણ કરી શકાય છે.",
          'name26': 'બેક્લોફેન',
          'dieases26':
              "બેકલોફેન ટેબ્લેટનો ઉપયોગ સ્નાયુઓની ખેંચાણ, ખેંચાણ અથવા પરિસ્થિતિઓને કારણે થતી જડતામાં રાહત આપવા માટે કરવામાં આવે છે જો હોસ્પિટલમાં નિષ્ણાત ડૉક્ટર દ્વારા સૂચવવામાં આવે.",
          'name27': 'બેક્લોમેટાસોન ઇન્હેલર્સ',
          'dieases27':
              "બેકલોમેટાસોન એ સ્ટીરોઈડ (જેને કોર્ટીકોસ્ટેરોઈડ પણ કહેવાય છે) તરીકે ઓળખાતી દવાનો એક પ્રકાર છે. તેનો ઉપયોગ મુખ્યત્વે અસ્થમા માટે થાય છે, પરંતુ કેટલીકવાર ક્રોનિક અવરોધક પલ્મોનરી ડિસીઝ (COPD) માટે પણ થાય છે.",
          'name28': 'બેક્લોમેટાસોન નસલ સ્પ્રે',
          'dieases28':
              "બેકલોમેટાસોન અનુનાસિક (નાક) સ્પ્રેનો ઉપયોગ એલર્જીક નાસિકા પ્રદાહને કારણે થતા શરદી જેવા લક્ષણોની સારવાર માટે થાય છે",
          'name29': 'બેકલોમેટાસોને સ્કિન ક્રીમ ',
          'dieases29':
              "બેક્લોમેટાસોન ક્રીમ અને મલમનો ઉપયોગ ખંજવાળ, સોજો અને બળતરા ત્વચાની સારવાર માટે થાય છે.",
          'name30': 'બેક્લોમેટાસોન ટેબલેટ ',
          'dieases30':
              "બેકલોમેટાસોન ગોળીઓનો ઉપયોગ અલ્સેરેટિવ કોલાઇટિસની સારવાર માટે થાય છે. તે તમારા આંતરડામાં સોજો (બળતરા) ઘટાડીને કામ કરે છે.",
          'name31': 'બેન્ડ્રોફ્લુમેથિયાઝાઇડ',
          'dieases31':
              "તેનો ઉપયોગ તમારા શરીરમાં હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) અને પ્રવાહીના નિર્માણ (એડીમા) ની સારવાર માટે થાય છે.",
          'name32': 'બેન્ઝોઈલ પેરોક્સાઇડ',
          'dieases32':
              "બેન્ઝોયલ પેરોક્સાઇડનો ઉપયોગ ખીલની સારવાર માટે થાય છે. તે તમારી ત્વચાની સપાટી પરના જંતુઓ (બેક્ટેરિયા)ની સંખ્યા ઘટાડવા માટે એન્ટિસેપ્ટિક તરીકે કામ કરે છે.",
          'name33': 'બેન્ઝિડામિન',
          'dieases33':
              "બેન્ઝિડામિન એ NSAID (બિન-સ્ટીરોઇડ બળતરા વિરોધી દવા) છે જે પીડા અને સોજો (બળતરા) ઘટાડે છે",
          'name34': 'બેટાહિસ્ટિન',
          'dieases34':
              "તે અંદરના કાનમાં પ્રવાહીના સંચયને ઘટાડીને કામ કરવાનું છે. તમને કેટલી વાર મેનીયર રોગના લક્ષણો મળે છે તે ઘટાડવામાં અને તેમને હળવા બનાવવામાં મદદ કરે છે.",
          'name35': 'બેટામીથાસોને ફોર આઈસ એરર્સ એન્ડ નોઝ',
          'dieases35':
              "તેનો ઉપયોગ તમારા બાહ્ય કાનમાં બળતરાની સારવાર માટે પણ થાય છે જે ખરજવું, પાણી અથવા કાનના પ્લગને કારણે થઈ શકે છે.",
          'name36': 'બેટામીથાસોને ફોર સ્કિન',
          'dieases36':
              "બેટામેથાસોન ત્વચા સારવારનો ઉપયોગ ખંજવાળ, સોજો અને બળતરા ત્વચાની સારવાર માટે થાય છે. તે ખરજવું, સંપર્ક ત્વચાનો સોજો અને સૉરાયિસસ જેવી પરિસ્થિતિઓમાં મદદ કરી શકે છે.",
          'name37': 'બેટામીથાસોને ટેબલેટ',
          'dieases37':
              "બેટામેથાસોન સોજો (બળતરા) ઘટાડવાનું કામ કરે છે. તે તમારી રોગપ્રતિકારક શક્તિને પણ શાંત કરે છે",
          'name38': 'બિમાટોપ્રોસ્ટ',
          'dieases38':
              "બિમાટોપ્રોસ્ટ એ એક દવા છે જે આંખમાં ઉચ્ચ દબાણ (ઓક્યુલર હાઇપરટેન્શન) ની સારવાર કરે છે અને ગ્લુકોમામાં મદદ કરે છે.",
          'name39': 'બિસાકોડીલ',
          'dieases39':
              "બિસાકોડીલ એક રેચક છે. જો તમને કબજિયાત (મૂકવામાં મુશ્કેલી) હોય તો આ પ્રકારની દવા તમને તમારા આંતરડા ખાલી કરવામાં મદદ કરી શકે છે.",
          'name40': 'બિસોપ્રોલોલ',
          'dieases40':
              "બિસોપ્રોલોલ જો તમને હાઈ બ્લડ પ્રેશર હોય, તો બિસોપ્રોલોલ લેવાથી ભવિષ્યમાં હાર્ટ એટેક, હાર્ટ એટેક અને સ્ટ્રોક અટકાવવામાં મદદ મળે છે.",
          'name41': 'બ્રિન્ઝોલામાઇડ',
          'dieases41':
              "બ્રિન્ઝોલામાઇડ એ એક દવા છે જે આંખની અંદરના ઉચ્ચ દબાણની સારવાર કરે છે (ઓક્યુલર હાઇપરટેન્શન) અને ગ્લુકોમામાં મદદ કરે છે.",
          'name42': 'બુડેસોનાઇડ ઇન્હેલર્સ',
          'dieases42':
              "બુડેસોનાઇડ ઇન્હેલર એ એક સ્ટેરોઇડ દવા છે જેનો ઉપયોગ અસ્થમા અને ક્રોનિક અવરોધક પલ્મોનરી રોગ (COPD) માટે થાય છે.",
          'name43': 'બુડેસોનિણે નસલ સ્પ્રે ',
          'dieases43':
              "બ્યુડેસોનાઇડ અનુનાસિક (નાક) સ્પ્રેનો ઉપયોગ એલર્જીક નાસિકા પ્રદાહને કારણે થતા શરદી જેવા લક્ષણોની સારવાર માટે થાય છે",
          'name44': 'બુડેસોનાઇડ રેક્ટલ ફોમ એન્ડ એનિમા',
          'dieases44':
              "બુડેસોનાઇડ રેક્ટલ ફોમ અને એનિમાનો ઉપયોગ અલ્સેરેટિવ કોલાઇટિસની સારવાર માટે થાય છે",
          'name45': 'બુડેસોનાઇડ ટેબલેટ , કેપ્સ્યુલ્સ એન્ડ  ગ્રાન્યુલ્સ',
          'dieases45':
              "બુડેસોનાઇડનો ઉપયોગ સોજો (બળતરા) ઘટાડવા માટે થાય છે, જે કેટલીક પરિસ્થિતિઓના લક્ષણોને નિયંત્રિત કરવામાં મદદ કરે છે.",
          'name46': 'બ્યુમેટાનાઇડ',
          'dieases46':
              "તેનો ઉપયોગ હૃદયની નિષ્ફળતા અને તમારા શરીરમાં પ્રવાહીના નિર્માણ (એડીમા) માટે થાય છે.",
          'name47': ' બુપ્રેનોર્ફિન ફોર પેઈન',
          'dieases47':
              "તેનો ઉપયોગ મુખ્યત્વે મધ્યમથી ગંભીર પીડાની સારવાર માટે થાય છે, ઉદાહરણ તરીકે ઓપરેશન દરમિયાન અથવા પછી અથવા ગંભીર ઈજા, અથવા કેન્સરથી પીડા.",
          'name48': 'બુસ્કોપન (હ્યોસીન બ્યુટીલબ્રોમાઇડ)',
          'dieases48':
              "બુસ્કોપાન પીડાદાયક પેટના ખેંચાણથી રાહત આપે છે, જેમાં બાવલ સિંડ્રોમ (IBS) સાથે સંકળાયેલા લોકોનો સમાવેશ થાય છે.",
          'name49': 'કેલ્સીપોટ્રિઓલ',
          'dieases49':
              "કેલ્સીપોટ્રિઓલનો ઉપયોગ પ્લેક સૉરાયિસસની સારવાર માટે થાય છે, જે ત્વચાની સમસ્યા છે જ્યાં તમારું શરીર ઘણા બધા ત્વચા કોષો ઉત્પન્ન કરે છે, જેના કારણે શુષ્ક, ખંજવાળવાળી, ખંજવાળવાળી ત્વચા (તકતીઓ) ના પેચ થાય છે.",
          'name50': 'કેન્ડેસર્ટન',
          'dieases50':
              "તે ભવિષ્યના સ્ટ્રોક, હાર્ટ એટેક અને કિડનીની સમસ્યાઓને રોકવામાં મદદ કરે છે. જો તમે તેને હૃદયની નિષ્ફળતા માટે લેતા હોવ તો તે તમારા અસ્તિત્વમાં પણ સુધારો કરે છે.",
          'name51': 'કાર્બામાઝેપિન',
          'dieases51':
              "તે ડાયાબિટીસ (પેરિફેરલ ન્યુરોપથી) દ્વારા થતા ચેતાના દુખાવા માટે પણ લઈ શકાય છે અથવા જો તમને ચહેરાની પીડાદાયક સ્થિતિ હોય જેને ટ્રાઇજેમિનલ ન્યુરલજીયા કહેવાય છે.",
          'name52': 'કાર્બીમાઝોલ',
          'dieases52':
              "કાર્બિમાઝોલ એ ઓવરએક્ટિવ થાઇરોઇડ (હાયપરથાઇરોઇડિઝમ) ની સારવાર માટે વપરાતી દવા છે. આ ત્યારે થાય છે જ્યારે તમારી થાઇરોઇડ ગ્રંથિ ઘણા બધા થાઇરોઇડ હોર્મોન્સ બનાવે છે.",
          'name53': 'કાર્બોસીસ્ટીન',
          'dieases53':
              "કાર્બોસીસ્ટીન એક પ્રકારની દવા છે જેને મ્યુકોલિટીક કહેવાય છે.",
          'name54': 'કાર્મેલોઝ સોડિયમ',
          'dieases54':
              "કાર્મેલોઝ સોડિયમ એ શુષ્ક આંખોની સારવાર માટે વપરાતું લુબ્રિકન્ટ છે. તે આંખના ટીપાં તરીકે આવે છે જે કૃત્રિમ આંસુની જેમ કામ કરે છે",
          'name55': 'કાર્વેડિલોલ',
          'dieases55':
              "હૃદયની નિષ્ફળતાની સારવાર માટે અને કંઠમાળને કારણે છાતીમાં દુખાવો અટકાવવા માટે તે અન્ય દવાઓ સાથે પણ આપી શકાય છે.",
          'name56': 'સેફાલેક્સિન',
          'dieases56':
              "સેફાલેક્સિન એ એન્ટિબાયોટિક છે. તે સેફાલોસ્પોરીન્સ નામના એન્ટિબાયોટિક્સના જૂથ સાથે સંબંધિત છે.",
          'name57': 'સેટીરીને',
          'dieases57':
              "સેટીરીને ને ઊંઘ ન આવે તેવી એન્ટિહિસ્ટામાઈન તરીકે ઓળખવામાં આવે છે. અન્ય એન્ટિહિસ્ટેમાઈન્સની સરખામણીમાં તે તમને ઊંઘ આવવાની શક્યતા ઘણી ઓછી છે.",
          'name58': 'ચેમ્પિક્સ (વારેનિકાલી)',
          'dieases58':
              "ચેમ્પિક્સ (વેરેનિકલાઇન પણ કહેવાય છે) હાલમાં યુકે અથવા યુરોપમાં ઉપલબ્ધ નથી.",
          'name59': 'ક્લોરામ્ફેનિકોલ',
          'dieases59':
              "તેનો ઉપયોગ મુખ્યત્વે આંખના ચેપ (જેમ કે નેત્રસ્તર દાહ) અને ક્યારેક કાનના ચેપની સારવાર માટે થાય છે.",
          'name60': 'ક્લોરહેક્સિડાઇન',
          'dieases60':
              "ક્લોરહેક્સિડાઇન એ એન્ટિસેપ્ટિક અને જંતુનાશક છે. તે તમારા મોંમાં અથવા તમારી ત્વચા પરના જંતુઓ (બેક્ટેરિયા)ની સંખ્યા ઘટાડવામાં મદદ કરે છે.",
          'name61': 'ક્લોરફેનામાઇન (પિરીટોન)',
          'dieases61':
              "ક્લોરફેનામાઇન એ એન્ટિહિસ્ટેમાઈન દવા છે જે એલર્જીના લક્ષણોમાં રાહત આપે છે.",
          'name62': 'સિનારીઝિન',
          'dieases62':
              "સિનારીઝિન એ એન્ટિહિસ્ટામાઇન છે જે તમને બીમાર લાગવાથી અથવા બીમાર લાગવાથી રોકે છે, જેમ કે ઉબકા કે ઉલટી.",
          'name63': 'સિપ્રોફ્લોક્સાસીન',
          'dieases63':
              "તેનો ઉપયોગ સંખ્યાબંધ બેક્ટેરિયલ ચેપની સારવાર માટે થાય છે",
          'name64': 'સિટાલોપ્રામ',
          'dieases64':
              "તેનો ઉપયોગ ઘણીવાર નીચા મૂડ (ડિપ્રેશન) અને ક્યારેક ગભરાટના હુમલા માટે પણ થાય છે.",
          'name65': 'ક્લેરિથ્રોમાસીન',
          'dieases65':
              "તેનો ઉપયોગ છાતીના ચેપ જેમ કે ન્યુમોનિયા, ત્વચાની સમસ્યાઓ જેમ કે સેલ્યુલાઇટિસ અને કાનના ચેપની સારવાર માટે થાય છે.",
          'name66': 'ક્લોબેટાસોલ',
          'dieases66':
              "ક્લોબેટાસોલ એ સ્ટીરોઈડ દવા છે જેનો ઉપયોગ ત્વચા પર સોજો, ખંજવાળ અને બળતરાની સારવાર માટે થાય છે",
          'name67': 'ક્લોબેટાસોન',
          'dieases67':
              "ક્લોબેટાસોન (ક્લોબેટાસોન બ્યુટીરેટ તરીકે પણ ઓળખાય છે) એ સ્ટીરોઈડ દવા છે જેનો ઉપયોગ ત્વચા પર સોજો, ખંજવાળ અને બળતરાની સારવાર માટે થાય છે.",
          'name68': 'ક્લોનાઝેપામ',
          'dieases68':
              "તેનો ઉપયોગ એપીલેપ્સી, અનૈચ્છિક સ્નાયુ ખેંચાણ, ગભરાટના વિકાર અને ક્યારેક બેચેન પગના સિન્ડ્રોમને કારણે હુમલા અથવા ફિટને નિયંત્રિત કરવા માટે થાય છે.",
          'name69': 'ક્લોનિડાઇન',
          'dieases69':
              "તે હૃદયની રુધિરવાહિનીઓને આરામ અને પહોળી કરવામાં મદદ કરે છે જેથી લોહી વધુ સરળતાથી તેમાંથી પસાર થઈ શકે.",
          'name70': 'ક્લોપીડોગ્રેલ',
          'dieases70':
              "તે પ્લેટલેટ્સ (એક પ્રકારનું રક્ત કોષ) ને એકસાથે ચોંટતા અને ખતરનાક રક્ત ગંઠાઈ જવાથી અટકાવે છે.",
          'name71': 'ક્લોટ્રિમાઝોલ ક્રીમ, સ્પ્રે એન્ડ સોલ્યુશન',
          'dieases71':
              "ક્લોટ્રિમાઝોલ એ ફૂગપ્રતિરોધી દવા છે. તેનો ઉપયોગ ફૂગ (યીસ્ટ) દ્વારા થતા ત્વચાના ચેપની સારવાર માટે થાય છે.",
          'name72': 'ક્લોટ્રિમાઝોલ ફોર થરુષ (કેનેસ્ટેન)',
          'dieases72':
              "તેનો ઉપયોગ પુરુષો અને સ્ત્રીઓમાં થ્રશ સહિત યીસ્ટના ચેપની સારવાર માટે થાય છે, જોકે સ્ત્રીઓમાં થ્રશ વધુ સામાન્ય છે.",
          'name73': 'કો-એમોક્સિકલાવ',
          'dieases73':
              "કો-એમોક્સિકલાવ એ એન્ટિબાયોટિક છે જેનો ઉપયોગ બેક્ટેરિયલ ચેપ માટે થાય છે.",
          'name74': 'સહ-બેનેલડોપા',
          'dieases74':
              "તે ધ્રુજારી (ધ્રુજારી), મંદતા અને જડતામાં મદદ કરી શકે છે",
          'name75': 'કો-કેરેલ્ડોપા',
          'dieases75':
              "કો-કેરેલ્ડોપા તમારા મગજ માટે તમારા સ્નાયુઓને ફરીથી સંદેશા મોકલવાનું સરળ બનાવીને કામ કરે છે.",
          'name76': 'કો-કોડામોલ ફોર અડલ્ટ્સ ',
          'dieases76':
              "તેનો ઉપયોગ માથાનો દુખાવો, સ્નાયુઓમાં દુખાવો, આધાશીશી અને પુખ્ત વયના લોકો માટે દાંતના દુઃખાવા સહિતના દુખાવા અને દુખાવાની સારવાર માટે થાય છે",
          'name77': 'કો-કોડામોલ ફોર ચિલ્ડ્રેન ',
          'dieases77':
              "તેનો ઉપયોગ માથાનો દુખાવો, સ્નાયુઓમાં દુખાવો, માઇગ્રેઇન્સ અને બાળકો માટે દાંતના દુઃખાવા સહિતના દુખાવા અને દુખાવાની સારવાર માટે થાય છે",
          'name78': 'કો-કોડાપ્રિન (એસ્પિરિન અને કોડીન)',
          'dieases78':
              "તેનો ઉપયોગ શરદી અને ફ્લૂના લક્ષણોની સારવાર માટે પણ થઈ શકે છે.",
          'name79': 'કો-ડાયડ્રામોલ',
          'dieases79':
              "તેમાં પેરાસીટામોલ અને ડાયહાઈડ્રોકોડીનનો ઉપયોગ ચેતા અને મગજમાં સંદેશવાહકોને અવરોધિત કરીને કામ કરે છે જે તમારા શરીરને કહે છે કે તમે પીડામાં છો.",
          'name80': 'કોલ ટાર',
          'dieases80':
              "કોલ ટાર એ એક દવા છે જેનો ઉપયોગ ત્વચા અને ખોપરી ઉપરની ચામડી પર ખંજવાળ, બળતરા અને શુષ્ક પેચો (સ્કેલિંગ અને ફ્લેકિંગ) માટે થાય છે",
          'name81': 'કોડીન',
          'dieases81':
              "તેનો ઉપયોગ પીડાની સારવાર માટે થાય છે, ઉદાહરણ તરીકે, ઓપરેશન અથવા ઈજા પછી",
          'name82': 'કોલચીસિન',
          'dieases82': "કોલ્ચિસીન એ બળતરા અને પીડાની સારવાર માટેની દવા છે.",
          'name83': 'કોલેકલ્સીફેરોલ',
          'dieases83':
              "કોલેકેલ્સિફેરોલ એ વિટામિન ડીનું એક સ્વરૂપ છે. તે તમારા શરીરને તમે જે ખોરાક ખાઓ છો તેમાંથી વધુ કેલ્શિયમ અને ફોસ્ફરસ શોષવામાં મદદ કરે છે",
          'name84':
              'કૉંટીનૂઓસ કોમ્બીનેડ હોર્મોંને રિપ્લેસમેન્ટ થેરાપિય (એસ આર ટી ) ટેબલેટ કેપ્સુલેસ એન્ડ પાસેસ ',
          'dieases84':
              "તે નબળા થતા હાડકાં (ઓસ્ટીયોપોરોસીસ) ને પણ રોકી શકે છે જે મેનોપોઝ પછી સામાન્ય છે.",
          'name85': 'કોન્ટ્રાસેપ્ટીવે ઈન્જેકશન્સ (મેદરોક્સીપ્રોગરેસ્ટરોને)',
          'dieases85':
              "મેડ્રોક્સીપ્રોજેસ્ટેરોન ઇન્જેક્શનઆર ઉઝ એસ કોન્ટ્રાસેપ્શન",
          'name86': 'સાયનોકોબાલામીન',
          'dieases86':
              " તેનો ઉપયોગ વિટામિન B12 ની ઉણપનો એનિમિયા (જ્યારે તમારા શરીરમાં આ વિટામિનનું સ્તર ઓછું હોય ત્યારે) સારવાર અને અટકાવવા માટે થાય છે.",
          'name87': 'સાયકલાઇઝિન',
          'dieases87':
              "તે એક એન્ટિહિસ્ટામાઇન છે જેનો ઉપયોગ તમને બીમાર (ઉબકા અથવા ઉલટી) થવામાં અથવા તેને રોકવામાં મદદ કરવા માટે થાય છે.",
          'name88': 'દબીગત્રન',
          'dieases88':
              "તે તમારા રક્તને તમારી નસોમાં વધુ સરળતાથી વહન કરે છે. આનો અર્થ એ છે કે તમારા લોહીમાં ખતરનાક રક્ત ગંઠાઈ જવાની શક્યતા ઓછી હશે.",
          'name89': 'ડાપાગ્લિફ્લોઝિન',
          'dieases89':
              "તેનો ઉપયોગ હૃદયની નિષ્ફળતા અને ક્રોનિક કિડની ડિસીઝ (CKD)ની સારવાર માટે પણ થઈ શકે છે.",
          'name90': 'ડેક્સામેથાસોન આઈસ ડ્રૉપ',
          'dieases90':
              "તેનો ઉપયોગ સોજો, લાલાશ અને બળતરા ઘટાડીને આંખની બળતરાની સારવાર માટે થાય છે",
          'name91': 'ડેક્સામેથાસોન ટેબલેટ એન્ડ લિકવિડ',
          'dieases91':
              "તે કેન્સરની સારવારની આડઅસર અથવા તમારા કેટલાક લક્ષણોને ઘટાડવામાં પણ મદદ કરી શકે છે જો તમે જીવનની સંભાળ પૂરી કરી રહ્યાં હોવ.",
          'name92': 'ડાયઝેપામ',
          'dieases92':
              "તેનો ઉપયોગ અસ્વસ્થતા, સ્નાયુ ખેંચાણ અને હુમલા અથવા ફિટની સારવાર માટે થાય છે",
          'name93': 'ડીક્લોફેનાક',
          'dieases93':
              "તેનો ઉપયોગ દુખાવો અને દુખાવો તેમજ સાંધા, સ્નાયુઓ અને હાડકાંની સમસ્યાઓની સારવાર માટે થાય છે",
          'name94': 'ડિગોક્સિન',
          'dieases94':
              "તેનો ઉપયોગ હૃદયની કેટલીક સમસ્યાઓને નિયંત્રિત કરવા માટે થાય છે, જેમ કે ધમની ફાઇબરિલેશન સહિત અનિયમિત ધબકારા (એરિથમિયા).",
          'name95': 'ડાયહાઇડ્રોકોડિન',
          'dieases95':
              "તેનો ઉપયોગ મધ્યમથી ગંભીર પીડાની સારવાર માટે થાય છે, જેમ કે ઓપરેશન અથવા ગંભીર ઈજા પછી.",
          'name96': 'ડિલ્ટિયાઝેમ',
          'dieases96':
              "તે તમારા બ્લડ પ્રેશરને ઓછું કરીને અને તમારા હૃદયને તમારા શરીરની આસપાસ લોહી પંપ કરવાનું સરળ બનાવીને કામ કરે છે.",
          'name97': 'ડિફેનહાઇડ્રેમાઇન',
          'dieases97':
              "તે સુસ્તી (શામક) એન્ટિહિસ્ટેમાઈન તરીકે ઓળખાય છે અને અન્ય એન્ટિહિસ્ટામાઈન કરતાં તમને ઊંઘ આવવાની શક્યતા વધારે છે.",
          'name98': 'ડિપાયરિડામોલ',
          'dieases98':
              "તે રક્તકણોના એક પ્રકાર (પ્લેટલેટ્સ)ને એકસાથે ચોંટતા અને ખતરનાક લોહીના ગંઠાઈ જવાને અટકાવે છે.",
          'name99': 'ડોક્યુસેટ',
          'dieases99':
              "તે તમારા જખમને નરમ કરવામાં મદદ કરે છે અને જો તમને શૌચક્રિયા (કબજિયાત)ની સમસ્યા હોય તો તમારી આંતરડાની ગતિને સરળ બનાવે છે.",
          'name100': 'ડોમ્પરીડોન',
          'dieases100':
              "તે તમારા પેટના ઉપરના સ્નાયુઓને કડક બનાવીને અને તમારા પેટના તળિયેના સ્નાયુઓને આરામ આપીને કામ કરે છે",
          'name101': 'ડોનપેઝિલ',
          'dieases101':
              "તે ડિમેન્શિયાનો ઇલાજ કરતું નથી. જો કે, તે અલ્ઝાઈમર રોગ, પાર્કિન્સન રોગ અને ડિમેન્શિયાના કેટલાક લક્ષણોની સારવાર લેવી બોડીઝ સાથે કરે છે.",
          'name102': 'ડોસુલેપિન',
          'dieases102':
              "ડોસુલેપિન એ એન્ટીડિપ્રેસન્ટ દવા છે જેનો ઉપયોગ ડિપ્રેશનની સારવાર માટે થાય છે.",
          'name103': 'ડોક્સાઝોસિન',
          'dieases103':
              "તેનો ઉપયોગ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) અને વિસ્તૃત પ્રોસ્ટેટ (સૌમ્ય પ્રોસ્ટેટિક એન્લાર્જમેન્ટ) ના લક્ષણોની સારવાર માટે થાય છે.",
          'name104': 'ડોક્સીસાયક્લાઇન',
          'dieases104':
              "જો તમે વિદેશમાં મુસાફરી કરી રહ્યાં હોવ તો તેનો ઉપયોગ મેલેરિયાને રોકવા માટે પણ થઈ શકે છે.",
          'name105': 'ડ્યુલોક્સેટીન',
          'dieases105':
              "તેનો ઉપયોગ ચેતાના દુખાવાની સારવાર માટે પણ થાય છે, જેમ કે ફાઈબ્રોમીઆલ્ગીઆ, અને તેનો ઉપયોગ સ્ત્રીઓમાં તણાવયુક્ત પેશાબની અસંયમની સારવાર માટે થઈ શકે છે.",
          'name106': 'ઇડોક્સાબન',
          'dieases106':
              "તે તમારા રક્તને તમારી નસોમાં વધુ સરળતાથી વહેતું બનાવે છે.",
          'name107': 'એમ્પાગ્લિફ્લોઝિન',
          'dieases107':
              "જો ડાયાબિટીસની એક દવા તમારા બ્લડ સુગરને યોગ્ય રીતે નિયંત્રિત ન કરતી હોય તો તેને અન્ય ડાયાબિટીસ દવાઓ, જેમ કે ઇન્સ્યુલિન સાથે પણ લઈ શકાય છે.",
          'name108': 'એન્લાપ્રિલ',
          'dieases108':
              "જો તમને હાઈ બ્લડ પ્રેશર હોય, તો એનાલાપ્રિલ લેવાથી ભવિષ્યમાં આવતા હાર્ટ એટેક અથવા સ્ટ્રોકને રોકવામાં મદદ મળશે.",
          'name109': 'એપ્લેરેનોન',
          'dieases109':
              "તે તમારા હૃદયની નિષ્ફળતાના લક્ષણોને નિયંત્રણમાં રાખવામાં મદદ કરે છે અને તમારા હૃદયના નબળા પડવાના જોખમને ઘટાડે છે",
          'name110': 'એરિથ્રોમાસીન',
          'dieases110':
              "તેનો વ્યાપકપણે ઉપયોગ છાતીના ચેપ, જેમ કે ન્યુમોનિયા, ચામડીની સ્થિતિઓ, જેમ કે ખીલ અને રોસેસીયા, દાંતના ફોલ્લાઓ અને સેક્સ્યુઅલી ટ્રાન્સમિટેડ ચેપની સારવાર માટે થાય છે.",
          'name111': 'એસ્કીટાલોપ્રામ',
          'dieases111':
              "તેનો ઉપયોગ ઘણીવાર ડિપ્રેશનની સારવાર માટે થાય છે અને કેટલીકવાર તેનો ઉપયોગ ચિંતા, બાધ્યતા મનોગ્રસ્તિ વિકાર (OCD) અથવા ગભરાટના હુમલા માટે થાય છે.",
          'name112': 'એસોમેપ્રાઝોલ',
          'dieases112':
              "એસોમેપ્રાઝોલ તમારા પેટમાં બનેલા એસિડનું પ્રમાણ ઘટાડે છે.",
          'name113': 'ઇઝેટીમીબે',
          'dieases113':
              "ઇઝેટીમીબે નો ઉપયોગ હાઈ બ્લડ કોલેસ્ટ્રોલની સારવાર માટે થાય છે.",
          'name114': 'ફેલોડિપિન',
          'dieases114':
              "ફેલોડિપિન એ કેલ્શિયમ ચેનલ બ્લોકર છે જેનો ઉપયોગ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) ની સારવાર માટે થાય છે.",
          'name115': 'ફેન્ટાનીલ',
          'dieases115':
              "તે મગજ અને બાકીના શરીર વચ્ચેના પીડા સંકેતોને અવરોધિત કરીને કામ કરે છે.",
          'name116': 'ફેરસ ફ્યુમરેટ',
          'dieases116':
              "ફેરસ ફ્યુમરેટ એ આયર્નનો એક પ્રકાર છે જેનો ઉપયોગ આયર્નની ઉણપની એનિમિયાની સારવાર અને અટકાવવા માટે દવા તરીકે થાય છે.",
          'name117': 'ફેરસ સલ્ફેટ',
          'dieases117':
              "ફેરસ સલ્ફેટ (અથવા સલ્ફેટ) આયર્નનો એક પ્રકાર છે જેનો ઉપયોગ આયર્નની ઉણપની એનિમિયાની સારવાર અને અટકાવવા માટે દવા તરીકે થાય છે.",
          'name118': 'ફેક્સોફેનાડીન',
          'dieases118':
              "ફેક્સોફેનાડીન એ એન્ટિહિસ્ટેમાઈન દવા છે જે એલર્જીના લક્ષણોમાં મદદ કરે છે",
          'name119': 'ફિનાસ્ટરાઇડ',
          'dieases119':
              "ફિનાસ્ટેરાઇડનો ઉપયોગ વિસ્તૃત પ્રોસ્ટેટ (સૌમ્ય પ્રોસ્ટેટ વિસ્તરણ) ની સારવાર માટે થાય છે. તે તમારા લક્ષણોને સરળ બનાવવામાં મદદ કરી શકે છે",
          'name120': 'ફ્લુક્લોક્સાસિલિન',
          'dieases120':
              "તેનો ઉપયોગ ત્વચા અને ઘાના ચેપ, હાડકાના ચેપ (ઓસ્ટીયોમેલિટિસ) બાળકોમાં કાનના ચેપની સારવાર માટે થાય છે",
          'name121': 'ફ્લુકોનાઝોલ',
          'dieases121':
              "ફ્લુકોનાઝોલ એ એન્ટિફંગલ દવા છે. તેનો ઉપયોગ વિવિધ પ્રકારના ફૂગના કારણે થતા ચેપની સારવાર માટે થાય છે",
          'name122': 'ફ્લુઓક્સેટીન (પ્રોઝેક)',
          'dieases122':
              "તેનો ઉપયોગ ઘણીવાર ડિપ્રેશનની સારવાર માટે થાય છે, અને કેટલીકવાર બાધ્યતા મનોગ્રસ્તિ વિકાર અને બુલિમિઆ",
          'name123': 'ફ્લુટીકાસોન ઇન્હેલર્સ',
          'dieases123':
              "ઇન્હેલ્ડ ફ્લુટીકાસોન એ અસ્થમા અને ક્રોનિક અવરોધક પલ્મોનરી ડિસીઝ (COPD) માટે વપરાતી દવા છે",
          'name124': 'ફ્લુટીકાસોન નસલ સ્પ્રે એન્ડ ડ્રોપ્સ',
          'dieases124': "તે નાકની અંદર સોજો અને બળતરા ઘટાડવાનું કામ કરે છે",
          'name125': 'ફ્લુટીકાસોન સ્કિન ક્રિમ',
          'dieases125':
              "ફ્લુટીકાસોન એ સ્ટીરોઈડ તરીકે ઓળખાતી દવાનો એક પ્રકાર છે (જેને કોર્ટીકોસ્ટેરોઈડ પણ કહેવાય છે).",
          'name126': 'ફોલિક એસિડ',
          'dieases126':
              "ફોલિક એસિડ એ વિટામિન ફોલેટનું કૃત્રિમ સંસ્કરણ છે, જેને વિટામિન B9 તરીકે પણ ઓળખવામાં આવે છે.",
          'name127': 'ફ્યુરોસેમાઇડ',
          'dieases127':
              " તેનો ઉપયોગ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન), હ્રદયની નિષ્ફળતા અને શરીરમાં પ્રવાહીના જથ્થા (એડીમા) ની સારવાર માટે થાય છે.",
          'name128': 'ફ્યુસિડિક એસિડ',
          'dieases128':
              "તેનો ઉપયોગ બેક્ટેરિયલ ચેપની સારવાર માટે થાય છે, જેમ કે સેલ્યુલાઇટિસ અને ઇમ્પેટીગો સહિત ત્વચાના ચેપ અને નેત્રસ્તર દાહ (લાલ, ખંજવાળવાળી આંખો) સહિત આંખના ચેપની સારવાર માટે.",
          'name129': 'ફાયબોગેલ (ઇસ્પગુલા કુશ્કી)',
          'dieases129':
              "ઇસ્પાઘુલા કુશ્કી કબજિયાત (મૂકવામાં મુશ્કેલી)ની સારવાર માટે લેવામાં આવતી રેચક છે.",
          'name130': 'ગેબાપેન્ટિન',
          'dieases130':
              "તે ચેતાના દુખાવા માટે પણ લેવામાં આવે છે, જે ડાયાબિટીસ અને દાદર સહિત વિવિધ પરિસ્થિતિઓને કારણે થઈ શકે છે.",
          'name131': 'ગેવિસ્કોન (એલ્જિનિક એસિડ)',
          'dieases131':
              "ગેવિસ્કોનનો ઉપયોગ હાર્ટબર્ન (એસિડ રીફ્લક્સ) અને અપચોની સારવાર માટે થઈ શકે છે",
          'name132': 'ગ્લિકલાઝાઇડ',
          'dieases132':
              "તે સલ્ફોનીલ્યુરિયા તરીકે ઓળખાતી દવા છે. સલ્ફોનીલ્યુરિયા તમારા સ્વાદુપિંડના ઇન્સ્યુલિનની માત્રામાં વધારો કરે છે. આ તમારી બ્લડ સુગરને ઘટાડે છે.",
          'name133': 'ગ્લિમેપીરાઇડ',
          'dieases133':
              "ગ્લિમેપીરાઇડ તમારા શરીરમાં ઉત્પન્ન થતા ઇન્સ્યુલિનની માત્રામાં વધારો કરીને તમારી રક્ત ખાંડ ઘટાડે છે.",
          'name134': 'ગ્લયસરી ટ્રિનિટ્રેટ (જીટીએન )',
          'dieases134':
              "તેનો ઉપયોગ કંઠમાળને કારણે થતા છાતીના દુખાવાને રોકવા અને સારવાર માટે થાય છે.",
          'name135': 'હેલોપેરીડોલ',
          'dieases135':
              "હેલોપેરીડોલ એક એવી દવા છે જે માનસિક સ્વાસ્થ્યની સ્થિતિમાં મદદ કરે છે",
          'name136': 'હેપરિનૉઇડ',
          'dieases136':
              "હેપેરિનોઇડ એ એક એવી દવા છે જે લોહીના નાના ગંઠાવાઓને બનતા અટકાવવામાં મદદ કરે છે અને તમારી ત્વચાની નીચે નસોના સોજાને ઘટાડે છે.",
          'name137': 'હોર્મોન રિપ્લેસમેન્ટ થેરાપી (એસ.આર.ટી )',
          'dieases137':
              "હોર્મોન રિપ્લેસમેન્ટ થેરાપી (HRT) એ મેનોપોઝના લક્ષણોમાં મદદ કરવા માટે વપરાતી સારવાર છે.",
          'name138': 'હાઇડ્રોકોર્ટિસોન',
          'dieases138':
              "જે લોકો પાસે પૂરતા પ્રમાણમાં કુદરતી સ્ટ્રેસ હોર્મોન કોર્ટિસોલ નથી, તેમના માટે હોર્મોન રિપ્લેસમેન્ટ તરીકે પણ તેનો ઉપયોગ કરી શકાય છે.",
          'name139': 'હાઇડ્રોકોર્ટિસોન બકલ ટેબલેટ',
          'dieases139':
              "હાઈડ્રોકોર્ટિસોન બકલ ગોળીઓ મોઢાના અલ્સરના દુખાવાને દૂર કરે છે અને ઉપચારને ઝડપી બનાવે છે.",
          'name140': 'હાઇડ્રોકોર્ટિસોન ફોર પીલ્સ એન્ડ ઈટચેય બોટોમ ',
          'dieases140':
              "તમારા તળિયે (ગુદા) ખંજવાળવાળા તળિયાની અંદર અથવા આસપાસ હેમોરહોઇડ્સ આ સારવારથી થાંભલાઓનો ઇલાજ થતો નથી, પરંતુ તે પીડા અને ખંજવાળમાં મદદ કરી શકે છે.",
          'name141': 'હાઇડ્રોકોર્ટિસોન ફોર સ્કિન ',
          'dieases141':
              "બળતરા તેઓ ખરજવું, સૉરાયિસસ, સંપર્ક, ત્વચાકોપ, ગરમી, ફોલ્લીઓ (કાંટાદાર ગરમી), જંતુ, ડંખ અને ડંખવાળા નેપી ફોલ્લીઓમાં મદદ કરી શકે છે.",
          'name142': 'હાઇડ્રોકોર્ટિસોન ઇન્જેક્શન',
          'dieases142':
              "હાઇડ્રોકોર્ટિસોન ઇન્જેક્શન, જેને કોર્ટીકોસ્ટેરોઇડ ઇન્જેક્શન પણ કહેવાય છે, તેનો ઉપયોગ સોજો અથવા પીડાદાયક સાંધા અથવા સ્નાયુઓમાં દુખાવોની સારવાર માટે થાય છે.",
          'name143': 'હાઇડ્રોક્સોકોબાલામીન',
          'dieases143':
              "તેનો ઉપયોગ વિટામિન B12 ની ઉણપ એનિમિયાની સારવાર અને અટકાવવા માટે થાય છે, જ્યાં તમારા શરીરમાં આ વિટામિનનું સ્તર ઓછું હોય છે.",
          'name144': 'હાઇડ્રોકોર્ટિસોન ટેબલેટ',
          'dieases144':
              "હાઈડ્રોકોર્ટિસોન ટેબ્લેટ્સ કોર્ટીસોલ નામના કુદરતી હોર્મોન માટે હોર્મોન રિપ્લેસમેન્ટ તરીકે કામ કરે છે.",
          'name145': 'હાઇડ્રોક્સીક્લોરોક્વિન',
          'dieases145':
              "હાઈડ્રોક્સીક્લોરોક્વિન એક પ્રકારની દવા છે જેને રોગ-સંશોધક વિરોધી સંધિવાની દવા (DMARD) કહેવાય છે. તે રસાયણોની અસરોને અવરોધિત કરીને કામ કરે છે",
          'name146': 'હ્યોસીન હાઇડ્રોબ્રોમાઇડ (ક્વેલ્સ એન્ડ જોય-રાઇડ્સ)',
          'dieases146':
              "ઉલટીને નિયંત્રિત કરવા માટે તમારા આંતરિક કાન અને તમારા મગજને અસર કરીને તે કામ કરે છે.",
          'name147': 'આઇબુપ્રોફેન એન્ડ કોડીન',
          'dieases147':
              "તેનો ઉપયોગ વિવિધ પ્રકારની પીડા અને પીડાની સારવાર માટે થાય છે, જેમાં નીચેનાનો સમાવેશ થાય છે:",
          'name148': 'આઇબુપ્રોફેન  ફોર અડલ્ટ્સ (નુરોફેન)',
          'dieases148':
              "આઇબુપ્રોફેન એ પીઠનો દુખાવો, પીરિયડનો દુખાવો, દાંતનો દુખાવો અને શરદી, ફલૂ અથવા કોરોનાવાયરસ (COVID-19) ના લક્ષણો સહિત વિવિધ પ્રકારના દુખાવા અને પીડા માટે રોજિંદા પેઇનકિલર છે.",
          'name149': 'આઇબુપ્રોફેન ફોર ચિલ્ડ્રન',
          'dieases149':
              "તેનો ઉપયોગ ઘણીવાર શરદી, ફલૂ અને કોરોનાવાયરસ (COVID-19), દાંત, દાંતનો દુખાવો, માથાનો દુખાવો, ગળામાં દુખાવો અને કાનના ચેપથી પીડા જેવી સ્થિતિના લક્ષણોની સારવાર માટે થાય છે.",
          'name150': 'ઇન્ડાપામાઇડ',
          'dieases150':
              "ઇન્દાપામાઇડનો ઉપયોગ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) ની સારવાર માટે થાય છે",
          'name151': 'ઇર્બેસર્ટન',
          'dieases151':
              "ઇર્બેસર્ટન એ એન્જીયોટેન્સિન રીસેપ્ટર બ્લોકર (એઆરબી) દવા છે જેનો વ્યાપકપણે હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) ની સારવાર માટે ઉપયોગ થાય છે",
          'name152': 'આઇસોસોર્બાઈડ મોનોનાઈટ્રેટ એન્ડ  આઈસોસોર્બાઈડ ડીનાઈટ્રેટ',
          'dieases152':
              "તેનો ઉપયોગ કંઠમાળના લક્ષણો (છાતીમાં દુખાવો) રોકવા માટે થાય છે, તેઓ હાલના કંઠમાળના હુમલાની સારવાર માટે કામ કરતા નથી.",
          'name153': 'આઇસોટ્રેટીનોઇન કેપ્સ્યુલ્સ (રોએક્યુટેન)',
          'dieases153':
              "આઇસોટ્રેટીનોઇન કેપ્સ્યુલ દવાની ગંભીર આડઅસર થઈ શકે છે, જેમાં તમારા માનસિક સ્વાસ્થ્ય અને જાતીય સ્વાસ્થ્યને અસર કરી શકે તેવી આડઅસરો સહિત",
          'name154': 'કેટોકોનાઝોલ',
          'dieases154':
              "તેનો ઉપયોગ ફૂગ (યીસ્ટ) દ્વારા થતા ત્વચા ચેપની સારવાર માટે થાય છે.",
          'name155': 'લેબેટાલોલ',
          'dieases155':
              "લેબેટાલોલ એ બીટા બ્લોકર દવા છે, જેનો ઉપયોગ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન), સગર્ભાવસ્થામાં હાઈ બ્લડ પ્રેશર સહિતની સારવાર માટે થાય છે.",
          'name156': 'લેક્ટ્યુલોઝ',
          'dieases156':
              "લેક્ટ્યુલોઝ એ કબજિયાતની સારવાર માટે રેચક દવા છે (મૂકવામાં મુશ્કેલી).",
          'name157': 'લેમોટ્રીજીન',
          'dieases157':
              "લેમોટ્રીજીન એ એપીલેપ્સીની સારવાર માટે વપરાતી દવા છે. તે બાયપોલર ડિસઓર્ડર ધરાવતા પુખ્ત વયના લોકોમાં નીચા મૂડ (ડિપ્રેશન)ને રોકવામાં પણ મદદ કરી શકે છે.",
          'name158': 'લેન્સોપ્રાઝોલ',
          'dieases158':
              "લેન્સોપ્રાઝોલ તમારા પેટમાં બનેલા એસિડનું પ્રમાણ ઘટાડે છે. તેનો ઉપયોગ અપચો, હાર્ટબર્ન, એસિડ રિફ્લક્સ અને ગેસ્ટ્રોએસોફેજલ-રિફ્લક્સ-ડિસીઝ (GORD) માટે થાય છે.",
          'name159': 'લેટેનોપ્રોસ્ટ',
          'dieases159':
              "લેટનોપ્રોસ્ટ એ પ્રોસ્ટાગ્લેન્ડિન એનાલોગ દવા છે જે આંખની અંદરના ઉચ્ચ દબાણની સારવાર કરે છે અને ગ્લુકોમાની સારવારમાં મદદ કરે છે.",
          'name160': 'લેર્કેનીડીપીન',
          'dieases160':
              "લેર્કેનીડીપીન એ કેલ્શિયમ ચેનલ બ્લોકર દવા છે જેનો ઉપયોગ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) ની સારવાર માટે થાય છે",
          'name161': 'લેટ્રોઝોલ',
          'dieases161':
              "લેટ્રોઝોલ એ સ્તન કેન્સરની સારવાર માટે વપરાતી દવા છે અને સ્તન કેન્સર પાછું આવતા અટકાવવામાં મદદ કરે છે.",
          'name162': 'લેવેટીરાસીટમ',
          'dieases162':
              "લેવેટીરાસેટમ એ એપીલેપ્સીની સારવાર માટે વપરાતી દવા છે. આંચકી એ મગજમાં વિદ્યુત પ્રવૃત્તિના વિસ્ફોટ છે જે અસ્થાયી રૂપે તે કેવી રીતે કાર્ય કરે છે તેની અસર કરે છે.",
          'name163': 'લેવોથિરોક્સિન',
          'dieases163':
              "લેવોથાઇરોક્સિન એ અન્ડરએક્ટિવ થાઇરોઇડ ગ્રંથિ (હાયપોથાઇરોડિઝમ) ની સારવાર માટે વપરાતી દવા છે.",
          'name164': 'લિડોકેઇન ફોર મોઉથ એન્ડ થ્રોટ',
          'dieases164':
              "લિડોકેઇન એ સ્થાનિક એનેસ્થેટિક છે જે તમે તેનો ઉપયોગ કરો છો તે વિસ્તારને સુન્ન કરી દે છે. તેનો ઉપયોગ સારવાર માટે કેટલીક દવાઓમાં થાય છે",
          'name165': 'લિડોકેઇન ફોર પીલ્સ એન્ડ ઈચય બોટોમ ',
          'dieases165':
              "લિડોકેઇન એ સ્થાનિક એનેસ્થેટિક છે જે તમે તેનો ઉપયોગ કરો છો તે વિસ્તારને સુન્ન કરી દે છે. તેનો ઉપયોગ સારવાર માટે કેટલીક દવાઓમાં થાય છે",
          'name166': 'લિડોકેઇન સ્કિન  ક્રીમ',
          'dieases166':
              "તે ચેતાઓને તમારા મગજમાં પીડાના સંકેતો મોકલતા અટકાવીને કામ કરે છે.",
          'name167': 'લિનાગ્લિપ્ટિન',
          'dieases167':
              "તમારું શરીર જે ઇન્સ્યુલિન બનાવે છે તે વધારીને તે કામ કરે છે.",
          'name168': 'લિસિનોપ્રિલ',
          'dieases168':
              "લિસિનોપ્રિલ એ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) અને હૃદયની નિષ્ફળતાની સારવાર માટેની દવા છે.",
          'name169': 'લિથિયમ',
          'dieases169':
              "લિથિયમ એક પ્રકારની દવા છે જેને મૂડ સ્ટેબિલાઇઝર તરીકે ઓળખવામાં આવે છે. તેનો ઉપયોગ મૂડ ડિસઓર્ડરની સારવાર માટે થાય છે",
          'name170': 'લોપેરામાઇડ',
          'dieases170':
              "લોપેરામાઇડ એ ઝાડા (વહેતું પૂ) ની સારવાર માટેની દવા છે. તે ટૂંકા ગાળાના ઝાડા અથવા બાવલ સિંડ્રોમ (IBS) માં મદદ કરી શકે છે.",
          'name171': 'લોરાટાડીન (કલારીટી )',
          'dieases171':
              "લોરાટાડીન એ એન્ટિહિસ્ટેમાઈન દવા છે જે એલર્જીના લક્ષણોમાં મદદ કરે છે. તેનો ઉપયોગ સારવાર માટે થાય છે",
          'name172': 'લોરાઝેપામ',
          'dieases172':
              "તેનો ઉપયોગ ચિંતા અને ઊંઘની સમસ્યાઓની સારવાર માટે થાય છે જે ચિંતા સાથે સંબંધિત છે.",
          'name173': 'લોસાર્ટન',
          'dieases173':
              "તેનો ઉપયોગ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) અને હૃદયની નિષ્ફળતાની સારવાર માટે વ્યાપકપણે થાય છે.",
          'name174': 'લો-ડોઝ એસ્પિરિન ',
          'dieases174':
              "લો-ડોઝ એસ્પિરિન એવા લોકોમાં હાર્ટ એટેક અને સ્ટ્રોકને રોકવામાં મદદ કરે છે જેઓનું જોખમ વધારે છે",
          'name175': 'લીમસાયક્લાઇન',
          'dieases175': "તેનો ઉપયોગ ચેપની સારવાર માટે પણ થાય છે",
          'name176': 'મેક્રોગોલ',
          'dieases176':
              "મેક્રોગોલ (અથવા મેક્રોગોલ) એ કબજિયાત (મૂકવામાં મુશ્કેલી)ની સારવાર માટે રેચક દવા છે.",
          'name177': 'મેબેન્ડાઝોલ',
          'dieases177':
              "તેનો ઉપયોગ મુખ્યત્વે આંતરડાના ચેપ માટે થાય છે જેમ કે થ્રેડવોર્મ્સ (કેટલીકવાર પિનવોર્મ તરીકે ઓળખાય છે) અને અન્ય ઓછા સામાન્ય કૃમિ ચેપ (વ્હિપવોર્મ, રાઉન્ડવોર્મ અને હૂકવોર્મ)",
          'name178': 'મેબેવેરીન',
          'dieases178':
              "મેબેવેરિન (કેટલીકવાર મેબેવેરિન હાઇડ્રોક્લોરાઇડ કહેવાય છે) એ એન્ટિસ્પેસ્મોડિક તરીકે ઓળખાતી એક પ્રકારની દવા છે. તે સ્નાયુઓની ખેંચાણમાં મદદ કરે છે.",
          'name179': 'મેડ્રોક્સીપ્રોજેસ્ટેરોન',
          'dieases179':
              "તેનો ઉપયોગ હોર્મોનલ પરિસ્થિતિઓ માટે થાય છે, જેમાં ભારે પીરિયડ્સ, એન્ડોમેટ્રિઓસિસ, પોલિસિસ્ટિક અંડાશય સિન્ડ્રોમ (PCOS) અને મેનોપોઝના લક્ષણોનો સમાવેશ થાય છે.",
          'name180': 'મેમેન્ટાઇન',
          'dieases180':
              "તેનો ઉપયોગ મેમરી લોસની સારવાર માટે થાય છે જે ડિમેન્શિયાના મુખ્ય લક્ષણોમાંનું એક છે.",
          'name181': 'મેસાલાઝીન',
          'dieases181':
              "મેસાલાઝીનનો ઉપયોગ અલ્સેરેટિવ કોલાઇટિસ અને ક્રોહન રોગ અને અન્ય પ્રકારના બળતરા આંતરડા રોગની સારવાર માટે થાય છે.",
          'name182': 'મેટફોર્મિન',
          'dieases182':
              "તે મેટફોર્મિન છે જે તમારું શરીર ઇન્સ્યુલિનને નિયંત્રિત કરે છે તે રીતે સુધારીને તમારા રક્ત ખાંડના સ્તરને ઘટાડે છે.",
          'name183': 'મેથાડોન',
          'dieases183':
              "તે તમારા ઉપાડના લક્ષણોને ઘટાડે છે, જેમ કે ધ્રુજારી, ધ્રુજારી અને અન્ય ફ્લૂ જેવા લક્ષણો. તે તૃષ્ણાને રોકવામાં પણ મદદ કરે છે.",
          'name184': 'મેથોટ્રેક્સેટ',
          'dieases184':
              "તે તમારા શરીરની રોગપ્રતિકારક શક્તિને ધીમું કરે છે અને સોજો (બળતરા) ઘટાડવામાં મદદ કરે છે.",
          'name185': 'મેથિલફેનિડેટ ફોર એડલ્ટ્સ',
          'dieases185':
              "મેથિલફેનિડેટનો ઉપયોગ ધ્યાનની ખામી હાયપરએક્ટિવિટી ડિસઓર્ડર (ADHD) ની સારવાર માટે થાય છે.",
          'name186': 'મેથિલફેનિડેટ ફોર ચિલ્ડ્રન',
          'dieases186':
              "મેથિલફેનિડેટ દવાઓના જૂથ સાથે સંબંધ ધરાવે છે, જેને ઉત્તેજક કહેવાય છે. તેઓ મગજમાં પ્રવૃત્તિ વધારીને કામ કરે છે",
          'name187': 'મેટોક્લોપ્રામાઇડ',
          'dieases187':
              "તેનો ઉપયોગ તમને માંદગી (ઉબકા કે ઉલટી) થવામાં રોકવામાં મદદ કરવા માટે થાય છે",
          'name188': 'મેટ્રોપ્રોલ',
          'dieases188':
              "તમે સામાન્ય રીતે તમારા લક્ષણોની સારવાર માટે તેને અન્ય દવાઓ સાથે લેશો",
          'name189': 'મેટ્રોનીડાઝોલ',
          'dieases189':
              "તેનો ઉપયોગ ચામડીના ચેપ, રોસેસીયા અને મોઢાના ચેપની સારવાર માટે થાય છે, જેમાં ચેપગ્રસ્ત પેઢા અને દાંતના ફોલ્લાઓનો સમાવેશ થાય છે.",
          'name190': 'મીરાબેગ્રોન',
          'dieases190':
              "મિરાબેગ્રોન એ એક દવા છે જે અતિશય સક્રિય મૂત્રાશયના લક્ષણોને સરળ બનાવે છે",
          'name191': 'મિર્ટાઝાપીન',
          'dieases191':
              "તેનો ઉપયોગ ડિપ્રેશન અને ક્યારેક ઓબ્સેસિવ કમ્પલ્સિવ ડિસઓર્ડર (OCD) અને ચિંતાની સારવાર માટે થાય છે.",
          'name192': 'મોલનુપીરાવીર (લગેવરિયો)',
          'dieases192':
              "મોલનુપીરાવીર એ એન્ટિવાયરલ દવા છે જે કોવિડ-19ને વધતા અને ફેલાતા વાયરસને અટકાવીને કામ કરે છે.",
          'name193': 'મોમેટાસોન ફોર સ્કિન ',
          'dieases193':
              "મોમેટાસોનનો ઉપયોગ ખંજવાળ, સોજો અને સોજોવાળી ત્વચાની સારવાર માટે થાય છે.",
          'name194': 'Mમોમેટાસોન ઇન્હેલર્સ',
          'dieases194':
              "તેને પ્રિવેન્ટર ઇન્હેલર કહેવામાં આવે છે કારણ કે તે તમને લક્ષણો મેળવવાથી રોકવામાં મદદ કરે છે.",
          'name195': 'મોમેટાસોન નસલ સ્પ્રે',
          'dieases195':
              "મોમેટાસોન અનુનાસિક (નાક) સ્પ્રેનો ઉપયોગ એલર્જીક નાસિકા પ્રદાહને કારણે થતા શરદી જેવા લક્ષણોની સારવાર માટે થાય છે.",
          'name196': 'મોન્ટેલુકાસ્ટ',
          'dieases196':
              "તે સામાન્ય રીતે સૂચવવામાં આવે છે જ્યારે અસ્થમા હળવો હોય છે અને તેને વધુ ખરાબ થતો અટકાવી શકે છે.",
          'name197': 'મોર્ફિન',
          'dieases197':
              "તેનો ઉપયોગ ગંભીર પીડાની સારવાર માટે થાય છે, ઉદાહરણ તરીકે ઓપરેશન અથવા ગંભીર ઈજા પછી, અથવા કેન્સર અથવા હાર્ટ એટેકથી પીડા.",
          'name198': 'નેપ્રોક્સેન',
          'dieases198':
              "નેપ્રોક્સેન એ નોન-સ્ટીરોઈડલ એન્ટી-ઈન્ફ્લેમેટરી ડ્રગ (NSAID) છે. તે સાંધા અને સ્નાયુઓમાં સોજો (બળતરા) અને દુખાવો ઘટાડે છે.",
          'name199': 'નેફોપમ',
          'dieases199':
              'તે મધ્યમ દુખાવાની સારવાર કરે છે, ઉદાહરણ તરીકે ઑપરેશન પછી અથવા ગંભીર ઈજા, દાંતનો દુખાવો, સાંધાનો દુખાવો અને સ્નાયુમાં દુખાવો, અથવા કૅન્સરનો દુખાવો.',
          'name200': 'નિકોરાન્ડિલ',
          'dieases200':
              "નિકોરેન્ડિલ એ એક દવા છે જેનો ઉપયોગ કંઠમાળને કારણે થતા છાતીના દુખાવાની સારવાર અને ઘટાડવા માટે થાય છે.",
          'name201': 'નિફેડિપિન',
          'dieases201':
              "નિફેડિપિન એ કેલ્શિયમ ચેનલ બ્લોકર દવા છે જેનો ઉપયોગ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) ની સારવાર માટે થાય છે.",
          'name202': 'નાઇટ્રોફ્યુરેન્ટોઇન',
          'dieases202':
              "તેનો ઉપયોગ નીચલા પેશાબની નળીઓનો વિસ્તાર ચેપ (યુટીઆઈ), જેમ કે સિસ્ટીટીસની સારવાર અને અટકાવવા માટે થાય છે.",
          'name203': 'નોર્ટ્રિપ્ટીલાઇન',
          'dieases203':
              "તેનો ઉપયોગ બાળકોમાં હતાશા અને પથારીમાં ભીનાશની સારવાર માટે પણ થાય છે (નિશાચર એન્યુરેસિસ).",
          'name204': 'નિસ્ટાટિન',
          'dieases204':
              "તેનો ઉપયોગ ફૂગ અથવા યીસ્ટના કારણે થતા ચેપની સારવાર અથવા અટકાવવા માટે થાય છે",
          'name205': 'એસ્ટ્રોજનની ટેબલેટ ,પેચો,જેલ એન્ડ સ્પ્રે',
          'dieases205':
              "તેનો ઉપયોગ મેનોપોઝના લક્ષણોની સારવાર માટે થાય છે. તે નબળા પડતા હાડકાં (ઓસ્ટીયોપોરોસિસ) ને રોકવામાં પણ મદદ કરે છે જે મેનોપોઝ પછી સામાન્ય છે.",
          'name206': 'ઓલાન્ઝાપીન',
          'dieases206':
              "ઓલાન્ઝાપિન માનસિક સ્વાસ્થ્યની સ્થિતિના લક્ષણોને નિયંત્રિત કરવામાં મદદ કરે છે",
          'name207': 'ઓલ્મેસરટન',
          'dieases207':
              "તે તમારું બ્લડ પ્રેશર ઘટાડે છે અને તમારા હૃદયને તમારા શરીરની આસપાસ લોહી પંપ કરવાનું સરળ બનાવે છે.",
          'name208': 'ઓમેપ્રઝોલ',
          'dieases208':
              "તેનો વ્યાપક ઉપયોગ અપચો અને હાર્ટબર્ન અને એસિડ રિફ્લક્સની સારવાર માટે થાય છે.",
          'name209': ' ઓક્સિજન ગેસ ફોર ઇન્હેલેશન',
          'dieases209': "એનેસ્થેટિક એજન્ટ",
          'name210': 'ઓક્સિબ્યુટિનિન',
          'dieases210':
              "ઓક્સીબ્યુટિનિન એ એક અતિસક્રિય મૂત્રાશયના લક્ષણોની સારવાર માટે વપરાતી દવા છે",
          'name211': 'ઓક્સિકોડોન',
          'dieases211':
              "તેનો ઉપયોગ ગંભીર પીડાની સારવાર માટે થાય છે, ઉદાહરણ તરીકે, ઓપરેશન પછી અથવા ગંભીર ઈજા, અથવા કેન્સરથી પીડા.",
          'name212': 'પેન્ટોપ્રાઝોલ',
          'dieases212':
              "તેનો ઉપયોગ હાર્ટબર્ન, એસિડ રિફ્લક્સ અને ગેસ્ટ્રો-ઓસોફેજલ રિફ્લક્સ રોગ (GORD) માટે થાય છે",
          'name213': ' પેરાસિટામોલ ફોર અડલ્ટ્સ',
          'dieases213':
              "પેરાસીટામોલ એ સામાન્ય પેઇનકિલર છે જેનો ઉપયોગ દુખાવો અને દુખાવાની સારવાર માટે થાય છે. તેનો ઉપયોગ ઊંચા તાપમાનને ઘટાડવા માટે પણ થઈ શકે છે.",
          'name214': ' પેરાસિટામોલ ફોર ચિલ્ડ્રન(કેલ્પોલ)',
          'dieases214':
              "તેનો ઉપયોગ ઘણીવાર માથાનો દુખાવો, પેટમાં દુખાવો, કાનનો દુખાવો અને શરદીના લક્ષણોની સારવાર માટે થાય છે.",
          'name215': 'પેરોક્સેટીન',
          'dieases215':
              "તેનો ઉપયોગ ઘણીવાર ડિપ્રેશન, અને ક્યારેક ઓબ્સેસિવ કમ્પલ્સિવ ડિસઓર્ડર (OCD), ગભરાટના હુમલા, ચિંતા અથવા પોસ્ટ-ટ્રોમેટિક સ્ટ્રેસ ડિસઓર્ડર (PTSD) માટે થાય છે.",
          'name216': 'પેક્સલોવિડ',
          'dieases216':
              "તેનો ઉપયોગ પ્રારંભિક COVID-19 ચેપની સારવાર માટે થાય છે અને વધુ ગંભીર લક્ષણોને રોકવામાં મદદ કરે છે",
          'name217': 'પેપરમિન્ટ ઓઇલ',
          'dieases217':
              "તે પેટમાં ખેંચાણ, પેટનું ફૂલવું અને ફાર્ટિંગ (ફ્લેટ્યુલેન્સ) ને દૂર કરવામાં મદદ કરે છે, ખાસ કરીને જો તમને બાવલ સિંડ્રોમ (IBS) હોય.",
          'name218': 'પેપ્ટો-બિસ્મોલ (બિસ્મથ સબસેલિસીલેટ)',
          'dieases218':
              "આ દવાનો ઉપયોગ હાર્ટબર્ન અને એસિડ રિફ્લક્સ, અપચો, ઝાડા અને માંદગીની લાગણી (ઉબકા) માટે થાય છે.",
          'name219': 'પેરીન્ડોપ્રિલ',
          'dieases219':
              "પેરીન્ડોપ્રિલ એ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) અને હૃદયની નિષ્ફળતાની સારવાર માટે વપરાતી દવા છે",
          'name220': 'ફેનોક્સિમિથિલપેનિસિલિન',
          'dieases220':
              "તેનો ઉપયોગ કાન, છાતી, ગળા અને ચામડીના ચેપ સહિતના બેક્ટેરિયલ ચેપની સારવાર માટે થાય છે.",
          'name221': 'ફેનીટોઈન',
          'dieases221':
              "ફેનીટોઈન ચેતાઓમાં વિદ્યુત આવેગને ધીમો કરીને અને પીડાને પ્રસારિત કરવાની તેમની ક્ષમતાને ઘટાડીને ચેતાના દુખાવાને દૂર કરવામાં મદદ કરી શકે છે.",
          'name222': 'પિઓગ્લિટાઝોન',
          'dieases222':
              "પિયોગ્લિટાઝોન તમારા શરીરને તે ઉત્પન્ન કરેલા ઇન્સ્યુલિનનો વધુ સારી રીતે ઉપયોગ કરવામાં મદદ કરીને તમારા રક્ત ખાંડના સ્તરને નિયંત્રિત કરવામાં મદદ કરે છે.",
          'name223': 'પ્રવસ્તાટિન',
          'dieases223':
              "જો તમને હાઈ બ્લડ કોલેસ્ટ્રોલ હોવાનું નિદાન થયું હોય, તો પ્રવાસ્ટેટિનનો ઉપયોગ કોલેસ્ટ્રોલ ઘટાડવા માટે થાય છે.",
          'name224': 'પ્રી-એક્સપોઝર પ્રોફીલેક્સિસ',
          'dieases224':
              "પ્રી-એક્સપોઝર પ્રોફીલેક્સિસ (PrEP) નો ઉપયોગ HIV (હ્યુમન ઇમ્યુનોડેફિસિયન્સી વાયરસ) થવાનું જોખમ ઘટાડવા માટે થાય છે.",
          'name225': 'પ્રેડનીસોલોન ટેબલેટ અને પલીકવીડ ',
          'dieases225':
              "તે સોજો (બળતરા) ઘટાડવામાં મદદ કરે છે અને તમારી રોગપ્રતિકારક શક્તિને પણ શાંત કરી શકે છે.",
          'name226': 'પ્રેગાબાલિન',
          'dieases226':
              "પ્રેગાબાલિનનો ઉપયોગ એપીલેપ્સી અને ચિંતાની સારવાર માટે થાય છે, તે ચેતાના દુખાવાની સારવાર માટે પણ લેવામાં આવે છે.",
          'name227': 'પ્રોક્લોરપેરાઝિન',
          'dieases227':
              "પ્રોક્લોરપેરાઝિન એ બીમારી વિરોધી દવા છે. તે તમને બીમાર લાગવા અથવા (ઉબકા કે ઉલ્ટી) થવામાં રોકવામાં મદદ કરી શકે છે.",
          'name228': 'યુટ્રોગેસ્ટન (માઇક્રોનાઇઝ્ડ પ્રોજેસ્ટેરોન)',
          'dieases228':
              "યુટ્રોગેસ્ટન (માઇક્રોનાઇઝ્ડ પ્રોજેસ્ટેરોન) એ એક દવા છે જેમાં પ્રોજેસ્ટેરોન નામનું હોર્મોન હોય છે. પ્રોજેસ્ટેરોન એ પ્રોજેસ્ટોજનનો એક પ્રકાર છે જે તમારા શરીરમાં ઉત્પન્ન થતા હોર્મોનની સમાન છે.",
          'name229': 'પ્રોમેથાઝિન (ફેનેર્ગન)',
          'dieases229':
              "તે સુસ્તી (શામક) એન્ટિહિસ્ટામાઇન તરીકે ઓળખાય છે, તેથી અન્ય એન્ટિહિસ્ટામાઇન કરતાં તે તમને ઊંઘમાં આવવાની શક્યતા વધારે છે.",
          'name230': 'પ્રોપ્રાનોલોલ',
          'dieases230':
              "તેનો ઉપયોગ હૃદયની સમસ્યાઓની સારવાર માટે, ચિંતાના કેટલાક લક્ષણોમાં મદદ કરવા અને માઇગ્રેનને રોકવા માટે થાય છે.",
          'name231': 'સ્યુડોફેડ્રિન (સુડાફેડ)',
          'dieases231':
              "સ્યુડોફેડ્રિન એ ડીકોન્જેસ્ટન્ટ છે જે તમને વધુ સરળતાથી શ્વાસ લેવામાં મદદ કરે છે જો તમારું નાક ભરાયેલું હોય અથવા અવરોધિત (નાક ભીડ) હોય.",
          'name232': 'ક્વેટીયાપીન',
          'dieases232':
              "ક્વેટીયાપીન એ એક દવા છે જે માનસિક સ્વાસ્થ્યની સ્થિતિમાં મદદ કરે છે",
          'name233': 'રાબેપ્રઝોલ',
          'dieases233':
              "રાબેપ્રાઝોલ તમારા પેટમાં બનેલા એસિડનું પ્રમાણ ઘટાડે છે. તેનો ઉપયોગ હાર્ટબર્ન, એસિડ રિફ્લક્સ અને ગેસ્ટ્રો-ઓસોફેજલ રિફ્લક્સ રોગ (GORD)ની સારવાર માટે વ્યાપકપણે થાય છે",
          'name234': 'રામીપ્રિલ',
          'dieases234':
              "રામીપ્રિલ એ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) અને હૃદયની નિષ્ફળતાની સારવાર માટે વ્યાપકપણે ઉપયોગમાં લેવાતી દવા છે",
          'name235': 'રેમડેસિવીર (વેક્લુરી)',
          'dieases235':
              "તેનો ઉપયોગ પ્રારંભિક COVID-19 ચેપની સારવાર માટે થાય છે અને વધુ ગંભીર લક્ષણોને રોકવામાં મદદ કરે છે.",
          'name236': 'રાઇઝડ્રોનેટ',
          'dieases236':
              "જો તમને ઓસ્ટીયોપોરોસીસ નામની સ્વાસ્થ્ય સ્થિતિ હોય અથવા થવાનું જોખમ હોય તો તે મદદ કરી શકે છે.",
          'name237': 'રિસ્પેરીડોન',
          'dieases237':
              "રિસ્પેરીડોન એવી દવા છે જે અમુક માનસિક સ્વાસ્થ્યની સ્થિતિના લક્ષણોમાં મદદ કરે છે",
          'name238': 'રિવારોક્સાબન',
          'dieases238':
              "તે તમારા રક્તને તમારી નસોમાં વધુ સરળતાથી વહન કરે છે. આનો અર્થ એ છે કે તમારા લોહીમાં ખતરનાક રક્ત ગંઠાઈ જવાની શક્યતા ઓછી હશે.",
          'name239': 'રોપીનીરોલ',
          'dieases239':
              "તેનો ઉપયોગ પાર્કિન્સન રોગ અને બેચેન પગના સિન્ડ્રોમના લક્ષણોની સારવાર માટે થાય છે.",
          'name240': 'રોસુવાસ્ટેટિન',
          'dieases240':
              "રોસુવાસ્ટેટિન સ્ટેટીન નામની દવાઓના જૂથ સાથે સંબંધ ધરાવે છે. તે કોલેસ્ટ્રોલ બનાવતા રોકવા માટે લીવર પર કામ કરીને કામ કરે છે.",
          'name241': 'સાલ્બુટામોલ ઇન્હેલર',
          'dieases241':
              "સાલ્બુટામોલનો ઉપયોગ અસ્થમા અને ક્રોનિક ઓબ્સ્ટ્રક્ટિવ પલ્મોનરી ડિસીઝ (સીઓપીડી) જેવા કે ઉધરસ, ઘરઘર અને શ્વાસ લેવામાં તકલીફ જેવા લક્ષણોને દૂર કરવા માટે થાય છે",
          'name242': 'સેક્સાગ્લિપ્ટિન',
          'dieases242':
              "શરીર પૂરતું ઇન્સ્યુલિન બનાવતું નથી, અથવા તે બનાવે છે તે ઇન્સ્યુલિન યોગ્ય રીતે કામ કરતું નથી. આ હાઈ બ્લડ સુગર લેવલ (હાઈપરગ્લાયકેમિઆ) તરફ દોરી શકે છે.",
          'name243': 'સેના',
          'dieases243':
              "તેનો ઉપયોગ કબજિયાત (કબજિયાત) ની સારવાર માટે થાય છે. તે તમારા આંતરડામાં સ્નાયુઓને ઉત્તેજિત કરીને કામ કરે છે.",
          'name244':
              'સેક્યુએન્ટીઝલ કોમ્બીનેડ હોર્મોંને રિપ્લેસમેન્ટ થેરાપિય (એસ આર ટી ) ટેબલ એન્ડ પટચેસ ',
          'dieases244':
              "સિક્વન્શિયલ કમ્બાઈન્ડ હોર્મોન રિપ્લેસમેન્ટ થેરાપી (HRT) એ એક દવા છે જેમાં એસ્ટ્રોજન અને પ્રોજેસ્ટોજન હોર્મોન્સ હોય છે. તેનો ઉપયોગ મેનોપોઝના લક્ષણોની સારવાર માટે થાય છે.",
          'name245': 'સર્ટ્રાલાઇન',
          'dieases245':
              "તેનો ઉપયોગ ઘણીવાર ડિપ્રેશનની સારવાર માટે થાય છે, અને ક્યારેક ગભરાટ ભર્યા હુમલાઓ, ઓબ્સેસિવ કમ્પલ્સિવ ડિસઓર્ડર (OCD) અને પોસ્ટ-ટ્રોમેટિક સ્ટ્રેસ ડિસઓર્ડર (PTSD).",
          'name246': 'સિલ્ડેનાફિલ (વાયગ્રા)',
          'dieases246':
              "સિલ્ડેનાફિલનો ઉપયોગ પલ્મોનરી હાયપરટેન્શન (ફેફસાંને સપ્લાય કરતી રક્ત વાહિનીઓમાં હાઈ બ્લડ પ્રેશર)ની સારવાર માટે પણ થાય છે.",
          'name247': 'સિમેટીકોન',
          'dieases247':
              "તેનો ઉપયોગ ફાર્ટિંગ (ફ્લેટ્યુલેન્સ), ફસાયેલા પવન અને પેટનું ફૂલવુંની સારવાર માટે થાય છે, જો કે અમે ચોક્કસ કહી શકતા નથી કે તે ખરેખર આ લક્ષણો માટે કામ કરે છે કે નહીં.",
          'name248': 'સિમ્વાસ્ટેટિન',
          'dieases248':
              "જો તમને હાઈ બ્લડ કોલેસ્ટ્રોલ હોવાનું નિદાન થયું હોય, તો સિમવાસ્ટેટિનનો ઉપયોગ કોલેસ્ટ્રોલ ઘટાડવા માટે થાય છે.",
          'name249': 'સોડિયમ ક્રોમોગ્લિકેટ કેપ્સ્યુલ્સ',
          'dieases249':
              "સોડિયમ ક્રોમોગ્લિકેટ કેપ્સ્યુલ્સ એ દવાઓના જૂથનો એક ભાગ છે જેને એન્ટિ-એલર્જિક કહેવાય છે. તેનો ઉપયોગ ખોરાક પ્રત્યેની એલર્જીક પ્રતિક્રિયાઓની સારવાર માટે થાય છે",
          'name250': 'સોડિયમ ક્રોમોગ્લિકેટ આઈસ ડ્રોપ્સ',
          'dieases250':
              "તેનો ઉપયોગ એલર્જીક નેત્રસ્તર દાહની સારવાર માટે થાય છે, જે પરાગરજ તાવ, ઘરની જીવાત અને અન્ય એલર્જી દ્વારા ઉદભવેલી સ્થિતિ છે.",
          'name251': 'સોડિયમ વાલપ્રોએટ',
          'dieases251':
              'સોડિયમ વાલ્પ્રોએટનો ઉપયોગ એપીલેપ્સી અને બાયપોલર ડિસઓર્ડરની સારવાર માટે થાય છે.',
          'name252': 'સોલિફેનાસિન',
          'dieases252':
              "સોલિફેનાસિન એ ઓવરએક્ટિવ મૂત્રાશયના લક્ષણોની સારવાર માટે વપરાતી દવા છે.",
          'name253': 'સોટાલોલ',
          'dieases253':
              "તેનો ઉપયોગ ધમની ફાઇબરિલેશન અને અન્ય પરિસ્થિતિઓની સારવાર માટે થાય છે જે અનિયમિત ધબકારા (એરિથમિયા) નું કારણ બને છે.",
          'name254': 'સોટ્રોવિમાબ (ઝેવુડી)',
          'dieases254':
              "સોટ્રોવિમાબ એક જૈવિક દવા છે. તેને ન્યુટ્રલાઇઝિંગ મોનોક્લોનલ એન્ટિબોડી (nMAb) તરીકે પણ ઓળખવામાં આવે છે. તેનો ઉપયોગ COVID-19 ની સારવાર માટે થાય છે",
          'name255': 'સ્પિરોનોલેક્ટોન',
          'dieases255':
              "સ્પિરોનોલેક્ટોન એક પ્રકારની દવા છે જેને મૂત્રવર્ધક પદાર્થ કહેવાય છે. આ દવાઓને ક્યારેક 'પાણીની ગોળીઓ' કહેવામાં આવે છે કારણ કે તે તમને વધુ પેશાબ કરાવે છે.",
          'name256': 'સલ્ફાસાલાઝિન',
          'dieases256':
              "Sulfasalazine નો ઉપયોગ અલ્સેરેટિવ કોલાઇટિસ અને ક્રોહન રોગ અને અન્ય પ્રકારના બળતરા આંતરડા રોગની સારવાર માટે થાય છે.",
          'name257': 'સુમાત્રિપ્તન',
          'dieases257':
              "સુમાટ્રિપ્ટન એ આધાશીશી અને ક્લસ્ટર માથાના દુખાવાની સારવાર માટેની દવા છે. તે આ પરિસ્થિતિઓને અટકાવતી નથી.",
          'name258': 'તડાલાફિલ',
          'dieases258':
              "તે ક્યારેક પલ્મોનરી હાયપરટેન્શન (ફેફસાંને સપ્લાય કરતી રક્ત વાહિનીઓમાં હાઈ બ્લડ પ્રેશર) ની સારવાર માટે પણ વપરાય છે.",
          'name259': 'ટેમસુલોસિન',
          'dieases259':
              "તેનો ઉપયોગ વિસ્તરેલ પ્રોસ્ટેટ (સૌમ્ય પ્રોસ્ટેટ વૃદ્ધિ) ના લક્ષણો ધરાવતા પુરૂષોની સારવાર માટે થાય છે. તે ક્યારેક-ક્યારેક કિડનીની પથરી અને પ્રોસ્ટેટીટીસની સારવાર માટે પણ લેવામાં આવે છે.",
          'name260': 'ટેમાઝેપામ',
          'dieases260':
              "તેનો ઉપયોગ ઊંઘની સમસ્યા (અનિદ્રા)ની સારવાર માટે થાય છે.",
          'name261': 'ટેર્બીનાફાઇન',
          'dieases261':
              "તેનો ઉપયોગ ફૂગ (યીસ્ટ) દ્વારા થતા ત્વચા ચેપની સારવાર માટે થાય છે, જેમાં નીચેનાનો સમાવેશ થાય છે:",
          'name262': 'થાઇમિન (વિટામિન B1)',
          'dieases262':
              "થાઇમીન ખોરાકને ઊર્જામાં ફેરવવામાં અને નર્વસ સિસ્ટમને સ્વસ્થ રાખવામાં મદદ કરે છે",
          'name263': 'ટિબોલોન',
          'dieases263':
              "ટિબોલોન મેનોપોઝના લક્ષણોને સુધારવામાં મદદ કરે છે, જેમ કે ગરમ ફ્લશ, ઓછો મૂડ અને યોનિમાર્ગ શુષ્કતા અથવા બળતરા",
          'name264': 'ટિકાગ્રેલોર',
          'dieases264':
              "જો તમને લોહીના ગંઠાવાનું જોખમ વધારે હોય તો ટિકાગ્રેલોર લેવાથી લોહીના ગંઠાવાનું અટકાવવામાં મદદ મળી શકે છે.",
          'name265': 'ટિમોલોલ આઈસ ડ્રોપ',
          'dieases265':
              "તમારી આંખની અંદરના દબાણમાં વધારો તમારા ઓપ્ટિક ચેતાને નુકસાન પહોંચાડી શકે છે. આ દ્રષ્ટિની ખોટ અથવા અંધત્વનું કારણ બની શકે છે.",
          'name266': 'ટિમોલોલ ટેબલેટ',
          'dieases266':
              "જો તમને હાઈ બ્લડ પ્રેશર હોય, તો ટિમોલોલ લેવાથી ભવિષ્યમાં હૃદયરોગ અથવા હૃદયરોગના હુમલાને રોકવામાં મદદ મળી શકે છે.",
          'name267': 'ટિયોટ્રોપિયમ ઇન્હેલર્સ',
          'dieases267':
              "ટિયોટ્રોપિયમ ઇન્હેલર્સનો ઉપયોગ ક્રોનિક અવરોધક પલ્મોનરી ડિસીઝ (સીઓપીડી) અને કેટલીકવાર અસ્થમાના લક્ષણોને રોકવા માટે થાય છે, જેમ કે ઉધરસ, ઘરઘર અને શ્વાસ લેવામાં તકલીફની લાગણી.",
          'name268': 'ટિયોટ્રોપિયમ ઇન્હેલર્સ',
          'dieases268':
              "તે તમારા ફેફસામાં સ્નાયુઓને આરામ આપીને અને તમારા વાયુમાર્ગને પહોળા કરીને કામ કરે છે. આ તમારા માટે શ્વાસ લેવાનું સરળ બનાવે છે.",
          'name269': 'ટોલ્ટેરોડિન',
          'dieases269':
              "તેનો ઉપયોગ બાળકોમાં પથારીમાં ભીનાશની સારવાર માટે પણ થાય છે (નિશાચર એન્યુરેસિસ).",
          'name270': 'ટોપીરામેટ',
          'dieases270':
              "ટોપીરામેટ એ એપીલેપ્સીની સારવાર માટે વપરાતી દવા છે. આને એન્ટિ-એપીલેપ્ટિક દવાઓ પણ કહેવામાં આવે છે.",
          'name271': 'ટ્રામાડોલ',
          'dieases271':
              "તેનો ઉપયોગ મધ્યમથી ગંભીર પીડાની સારવાર માટે થાય છે, ઉદાહરણ તરીકે ઓપરેશન અથવા ગંભીર ઈજા પછી.",
          'name272': 'ટ્રૅનેક્સામિક એસિડ',
          'dieases272':
              "તે તમારા લોહીને ગંઠાઈ જવા માટે મદદ કરે છે અને તેનો ઉપયોગ નાકમાંથી રક્તસ્રાવ અને ભારે સમયગાળા માટે થાય છે.",
          'name273': 'ટ્રાસ્ટુઝુમાબ (હર્સેપ્ટિન)',
          'dieases273':
              "તેનો ઉપયોગ સ્ત્રીઓમાં સ્તન કેન્સર, પુરુષોમાં સ્તન કેન્સર, અન્નનળીના કેન્સર અને પેટના કેન્સર સહિત કેટલાક પ્રકારના કેન્સરની સારવાર માટે થાય છે.",
          'name274': 'ટ્રેઝોડોન',
          'dieases274':
              "તેનો ઉપયોગ હતાશા, ચિંતા અથવા હતાશા અને ચિંતાના સંયોજનની સારવાર માટે થાય છે.",
          'name275': 'ટ્રાઇમેથોપ્રિમ',
          'dieases275':
              "તેનો ઉપયોગ પેશાબની નળીઓનો વિસ્તાર ચેપ (યુટીઆઈ), જેમ કે સિસ્ટીટીસની સારવાર અને અટકાવવા માટે થાય છે.",
          'name276': 'યુટ્રોગેસ્ટન (માઇક્રોનાઇઝ્ડ પ્રોજેસ્ટેરોન)',
          'dieases276':
              "યુટ્રોગેસ્ટન (માઇક્રોનાઇઝ્ડ પ્રોજેસ્ટેરોન) એ એક દવા છે જેમાં પ્રોજેસ્ટેરોન નામનું હોર્મોન હોય છે. પ્રોજેસ્ટેરોન એ પ્રોજેસ્ટોજનનો એક પ્રકાર છે જે તમારા શરીરમાં ઉત્પન્ન થતા હોર્મોનની સમાન છે",
          'name277': 'યોનિમાર્ગ એસ્ટ્રોજન',
          'dieases277':
              "તેનો ઉપયોગ યોનિમાર્ગની શુષ્કતા અને બળતરાની સારવાર માટે થાય છે જે મેનોપોઝ દરમિયાન થઈ શકે છે.",
          'name278': 'વાલ્પ્રોઇક એસિડ',
          'dieases278':
              "વેલપ્રોઇક એસિડનો ઉપયોગ સામાન્ય રીતે બાયપોલર ડિસઓર્ડરની સારવાર માટે થાય છે તેનો ઉપયોગ માઇગ્રેનને રોકવા માટે પણ થઈ શકે છે.",
          'name279': 'વલસર્ટન',
          'dieases279':
              "આ તમારું બ્લડ પ્રેશર ઘટાડે છે અને તમારા હૃદયને તમારા શરીરની આસપાસ લોહી પંપ કરવાનું સરળ બનાવે છે.",
          'name280': 'ચેમ્પિક્સ (વેરેનિકલાઇન)',
          'dieases280':
              "તે લાંબા ગાળા માટે અનુપલબ્ધ હોઈ શકે છે. ભવિષ્યમાં તે ફરીથી ઉપલબ્ધ થશે કે કેમ તે હજુ સુધી જાણી શકાયું નથી.",
          'name281': 'વેન્લાફેક્સિન',
          'dieases281':
              "તેનો ઉપયોગ ડિપ્રેશન અને ક્યારેક ચિંતા અને ગભરાટના હુમલાની સારવાર માટે થાય છે.",
          'name282': 'વેરાપામિલ',
          'dieases282':
              "તેનો ઉપયોગ હાઈ બ્લડ પ્રેશર (હાયપરટેન્શન) ની સારવાર માટે પણ થાય છે.",
          'name283': 'વોરફેરીન',
          'dieases283':
              "તે તમારા રક્તને તમારી નસોમાં વધુ સરળતાથી વહેતું બનાવે છે.",
          'name284': 'ઝોલ્પીડેમ',
          'dieases284':
              "તે તમને વધુ ઝડપથી ઊંઘવામાં મદદ કરે છે અને તમને રાત્રે જાગવાની શક્યતા ઓછી કરે છે. તે તમારા મગજમાં ગામા-એમિનોબ્યુટીરિક એસિડ (GABA) નામના શાંત રસાયણને અસર કરીને કામ કરે છે.",
          'name285': 'ઝોપિકલોન',
          'dieases285':
              "તે તમને વધુ ઝડપથી ઊંઘવામાં મદદ કરે છે, અને તમને રાત્રે જાગતા રોકવામાં પણ મદદ કરે છે.",
          'name286': 'ડિક્લોફેનાક ટેબ્લેટ 50 મિલિગ્રામ',
          'dieases286':
              "એનાલજેક્સ, એન્ટિપ્રાયરેટિક્સ, નોન-સ્ટીરોડલ બળતરા વિરોધી દવાઓ, સંધિવાની સારવાર માટે વપરાતી દવાઓ અને સંધિવાની વિકૃતિઓમાં ઉપયોગમાં લેવાતા રોગને સુધારનાર એજન્ટો",
          'name287': 'પેરાસીટામોલ સીરપ 125 મિલિગ્રામ/5 મિલી',
          'dieases287':
              "એનાલજેક્સ, એન્ટિપ્રાયરેટિક્સ, નોન-સ્ટીરોડલ બળતરા વિરોધી દવાઓ, સંધિવાની સારવાર માટે વપરાતી દવાઓ અને સંધિવાની વિકૃતિઓમાં ઉપયોગમાં લેવાતા રોગને સુધારનાર એજન્ટો",
          'name288': 'લેવોકેટિરીઝીને ૫મગ ટેબ્લેટ',
          'dieases288': "એનાફિલેક્સિસમાં વપરાતી એન્ટિ-એલર્જિક્સ અને દવાઓ",
          'name289': 'હાઇડ્રોકોર્ટિસોન સુસીનેટ ઇન્જેક્શન 100 મિલિગ્રામ',
          'dieases289': "એનાફિલેક્સિસમાં વપરાતી એન્ટિ-એલર્જિક્સ અને દવાઓ",
          'name290': 'ડાયેથિલકાર્બામાઝિન ટેબ્લેટ 100 મિલિગ્રામ',
          'dieases290': "એન્ટી-ફાઈલેરીયલ",
          'name291': 'ફ્લુકોનાઝોલ 150 એમજી ટેબ્લેટ',
          'dieases291': "ફૂગ વિરોધી દવાઓ",
          'name292': ' હાઇડ્રોક્લોરોથિયાઝાઇડ ટેબ્લેટ 12.5 મિલિગ્રામ ',
          'dieases292': "(સબલિંગ્યુઅલ) એન્ટિ-હાયપરટેન્સિવ દવાઓ",
          'name293': ' સિલ્વર સલ્ફાડિયાઝિન ક્રીમ 1%',
          'dieases293': "ત્વચાર સંબંધી દવાઓ (ટોપિકલ)",
          'name294': 'કેલામાઇન લોશન',
          'dieases294': "ત્વચાર સંબંધી દવાઓ (ટોપિકલ)",
          'name295': 'બેન્ઝિલ બેન્ઝોએટ મલમ/લોશન',
          'dieases295': "ત્વચાર સંબંધી દવાઓ (ટોપિકલ)",
          'name296': 'પોટેશિયમ પરમેંગેનેટ 0.1%',
          'dieases296': "ત્વચાર સંબંધી દવાઓ (ટોપિકલ)",
          'name297': 'ઝીંક ઓક્સાઇડ ક્રીમ 10%',
          'dieases297': "ત્વચાર સંબંધી દવાઓ (ટોપિકલ)",
          'name298': ' ઇથિલ આલ્કોહોલ (વિકૃત) સોલ્યુશન 70%',
          'dieases298': "જંતુનાશક અને એન્ટિસેપ્ટિક્સ",
          'name299': 'હાઇડ્રોજન પેરોક્સાઇડ સોલ્યુશન 6%',
          'dieases299': "જંતુનાશક અને એન્ટિસેપ્ટિક્સ",
          'name300': 'બી કોમ્પ્લેક્સ ટેબ્લેટ',
          'dieases300': "વિટામિન અને ખનિજો",
          'name301': 'વિટામિન A ઓરલ લિક્વિડ 100000IU',
          'dieases301': "વિટામિન અને ખનિજો",
          'name302': 'પાયરિડોક્સિન ટેબ્લેટ 25 મિલિગ્રામ',
          'dieases302': "વિટામિન અને ખનિજો",
          'name303': 'ચોલેકેલશિફેરોલ ટેબ્લેટ 60000 IU',
          'dieases303': "વિટામિન અને ખનિજો",
          'name304': 'કેલ્શિયમ કાર્બોનેટ ટેબ્લેટ 500 મિલિગ્રામ',
          'dieases304': "વિટામિન અને ખનિજો",
          'name305': 'સોડિયમ ક્લોરાઇડ ઇન્જેક્શન 0.9%',
          'dieases305':
              "પાણી, ઇલેક્ટ્રોલાઇટ વિક્ષેપ અને એસિડ-બેઝ વિક્ષેપને સુધારતા ઉકેલો",
          'name306': 'ડેક્સ્ટ્રોઝ 5%',
          'dieases306':
              "પાણી, ઇલેક્ટ્રોલાઇટ વિક્ષેપ અને એસિડ-બેઝ વિક્ષેપને સુધારતા ઉકેલો",
          'name307': 'નોર્મલ સલીને ડ્રોપ્સ',
          'dieases307': "શ્વસન માર્ગ પર કામ કરતી દવાઓ",
          'name308': ' રાબીએસ વાકસિન',
          'dieases308': "રસીઓ",
          'name309': 'લેવોથયરોક્ષીને ટેબલેટ 50 મિલિગ્રામ ',
          'dieases309': "થાઇરોઇડ અને એન્ટિ-થાઇરોઇડ દવાઓ",
          'name310': 'ગ્લિબેનક્લેમાઇડ ટેબ્લેટ 2.5 મિલિગ્રામ',
          'dieases310': "ડાયાબિટીસ મેલીટસમાં વપરાતી દવાઓ",
          'name311': 'ઝિંક સલ્ફેટ સીરપ',
          'dieases311': "જઠરાંત્રિય દવાઓ",
          'name312': 'ઓરલ રિહાઈડ્રેશન સોલ્ટ (ORS)',
          'dieases312': "જઠરાંત્રિય દવાઓ",
          'name313': 'સિપ્રોફ્લોક્સાસીન ડ્રોપ  0.3 %',
          'dieases313': "કાન, નાક અને ગળાની દવાઓ",
          'name314': ' ઇથયલ અલકોહોલ (દિનચદ) સોલ્યૂશન ૭૦%',
          'dieases314': "જંતુનાશક અને એન્ટિસેપ્ટિક્સ",
          'name315': 'હાઇડ્રોજન પેરોક્સાઇડ સોલ્યુશન 6%',
          'dieases315': "જંતુનાશક અને એન્ટિસેપ્ટિક્સ",
          'sortbillby': 'આ પ્રમાણે બિલને સૉર્ટ કરો',
        },
      };
}
