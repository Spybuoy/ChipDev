Amemorypoolisasegmentofmemoryallocatedforaparticularpurpose,allowingmultipleprograms
orprocessestouseacommonmemoryresource.Thisapproachcanoptimizememoryutilizationand
enhanceperformancebyminimizingthefrequencyofmemoryallocationsanddeallocations.

ThecomponentisdesignedforNclients,eachofwhichcanrequestmemorysimultaneously.Every
clientisassignedasinglememorysegmentinafixedallocation:client 0 tosegment 0 ,client 1 to
segment 1 ,andsoforth.ThebuffercontainsMbytes,meaningeachclientcanaccessM/Nbytes.

A.Proposeaseriesofteststoverifythecorrectnessofthecomponent.

B.Writeafunctionintheprogramminglanguageofyourchoicethatdividesthememoryspacefrom
ArrayM.Thefunctionshouldreturnanarrayofpointers,wherepointer 0 is
allocatedtoclient 0 ,pointer 1 toclient 1 ,etc.

C.Itisnowestablishedthatsomeclientsrequestandreleasememorymorefrequentlythanothers,
leading to greater wearon those memory segments. Devisea newand efficient wayto allocate
memorysegments,maintainingfixed‑timeallocationanddeallocation.

ImplementFSM(FiniteStateMachine)tosolvethefollowingproblem:
You receive a stream of N bits (an unknown number), at the end of the process, you need to
determine whether the number represented by the bits isdivisible by 3 ornot(Similarquestion
divisibleby5).

Consideraprocessorwitheight 4 ‑bitreg.Itsupportsfouroperationsthatcanbeappliedtoanyreg
Rx:

🔹Rx INC:IncrementthevalueinRxby 1.
🔹Rx DEC:DecreasethevalueinRxby 1.
🔹Rx CLR:ClearthevalueinRxto 0.
🔹LABEL Rx JUMP:JumptoLABELifthevalueinRxisnonzero.

A.ToperformtheoperationR3 = R2 * R1usingtheaboveoperations:
Isitpossibletoforegosomeactionsandimplementthemusingothers?

B. Wouldthecodeforthisoperationstillfunctioncorrectlyfornegativenumbers,specificallywhen
registervaluesarerepresentedusingtheTwo'scomplementmethod?

2 robotslandwithaparachuteonendlesstraintracks.Eachofthemplaceshisparachuteatthepoint
wherehelanded.
Yourgoalistowriteafunctionthatwillrunonthe 2 robotsatthesametime,inordertocreatea
meetingbetweenthemwithcertainty,usingthefollowingAPI:

1.move_left():Therobotmovestotheleftbyoneunitinoneunitoftime.
2.move_right():Therobotmovestotherightbyoneunitinoneunitoftime.
3.no_peration():Donothing.takesoneunitoftime.
4.on_parachute():Returnstrueiftherobotisstandingoneitheroftheparachutes,otherwisereturns
false.
5.did_meet():Returnstrueiftherobotmeetstheotherrobot,otherwisereturnsfalse.

For a given array of integers, arr, which includes unique elements, a collection ofall possible
subsetsmustbereturned.

❕Orderisnotimportant.
❕Donotincludethesamesubgrouptwice.

Input:arr=[1,2,3]
Output:[[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

GivenisthesystemthatperformsaswapbetweenthevalueinregisterAandthevalueinregisterB.

Describe thepossible implementation ofthesystemoperationforeachtimestep,thatis,howthe
exchangebetweentheregistervaluesisactuallycarriedout.

🔹ThedescriptionshouldcontainthevaluesoftheLoadandSelcontrollinesandthevaluesofthe
registersateachtimestep.
🔹TheALUcomponentperformsonlybasiclogicaloperations:XOR,NOR,AND,OR,NAND.

The diagram
provided illustrates a logical component and includes the delay times for each constituent part.
RegistersA,B,C,D,E,andFhavenegligibledelay.

A. Identify the critical path in the component, which is the longest sequence of operations that
determinesthetotalexecutiontime.

B.Reconfigurethecomponentusingthesame elementstooptimizethecriticalpath.Calculatethe
percentageofimprovementbycomparingtheoptimizedcriticalpathdelaytotheoriginal.

Withthehelpofaminimalnumberofmuxes(andaninputconnectiontoground,namelyputinas
input'0'),implementXORgate

Samequestion:UsingaminimalnumberofD‑typeFlip‑flops(DFFs)andlogicgates,implementa
componentwithasingleinputsignalandthreeoutputsignals:

🔹rise:Thisoutputsignalwillbe 1 iftheinputtransitionsfrom 0 to 1 ;otherwise,itwillbe 0.
🔹fall:Thisoutputsignalwillbe 1 iftheinputtransitionsfrom 1 to 0 ;otherwise,itwillbe 0.
🔹toggle:Thisoutputsignalwillbe 1 foranychangeintheinput,whetherfallingorrising;otherwise,
itwillbe 0.

You have a processor with 1MB of memory on which various applications are running. These
applicationsmayperformdynamicmemoryallocationanddeallocation.Theoperatingsystemrunning
ontheprocessorprovidesthefollowinginterface:

void* malloc(): Allocatesablock ofmemory that is 8 bytesin size and returnsthestarting
addressofthisblock.
void free(void*):Acceptsthestartingaddressofan 8 byteblockofmemoryandreleasesit.

Designamethodtomanagethememoryandimplementtheinterfaceinsuchawaythatblocksof 8
bytescanbeallocatedaslongasthereisavailablespace.

Follow‑up:Ensurethatthemethodhasafixedmemorycomplexity.

Using the function BinaryRand() which returns 0 or 1 with equal probability, and without a
multiplication operation (thiscame asafollowupafterintheinitialsolutionI usedamultiplication
operation),implementRand3()whichreturnsthenumber 0 , 1 or 2 withequalprobability.

You have been provided with an Interrupt Control Component (IC). This component
accepts 4 bitsat itsinput, with each bitcorresponding toan interruptfromadistinctsource.The
interrupts are prioritizedsuch that b3 has thehighestand b0 thelowest priority.Thecomponent
outputsthreesignalsuponprocessing:

🔹Y:ThissignalisthelogicalORofallinputbits(b0tob3)andindicatesifanyinterrupthasbeen
activated.
🔹P0andP1:Thesetwosignalstogetheridentifythehighestpriorityinterruptthathasoccurred.For
example,ifinterruptsfromb1andb3arereceived,P0andP1willbothbe 1.

Usingthiscomponent,onecaneffectivelyconstructa 16 bitinterruptcontroller.Thiscanbedoneby
combiningaminimalnumberofIC‑ 4 componentswithotherlogiccomponents,suchaslogicgates,
arithmeticunits,multiplexers,etc.

Youaregivenacomponentwith 4 inputsand 1 output.Thecomponentreturns'1'if 2 ormoreof
theinputsareset,'0'otherwise.
Usingthiscomponent(andconstants)youneedtoimplementacomponentthatreturns'1'if 3 or
moreoftheinputsareset,usingaminimalnumberofcomponents.

ImplementFAusingaminimalnumberofMux 2:1.

Givenaclockwithsomefrequency.UsingDFF'sandlogicgates,youneedtoimplementafrequency
dividerfortheclock(i.e.anewclockthatwillworkathalfthefrequencyoftheoriginalclock).

HowdoyouimplementfunctionswithanunfixednumberofargumentsinC(likeprintf)?

A.ImplementFAusinglogicgates.
B.UsingaminimalnumberofFAelements,implementacomponentthatcountsthenumberof1'sof
a 7 bitinput.

Itcameasawarm‑upquestion:
Withoutusingif - else,writeafunctionthattakes 17 andreturns 3 ,andviceversa.

Whatisclockbias?Howcanitbeminimizedinchipdesign?

Implement acomponent thatreceives an addressthesize ofonebyte( 8 bits)andanotheroffset
valuethatcanonlyreceivethevalues 1 , 2 , 4 ( 3 bits),andreturnsthevalueoftheaddress+offset.
Youcandothisby:
A.Mux's.
B.Half Adder.
C.Combinationallogic(AND,NOT,OR,etc).

Given 4 registersr1,r2,r3,r4.Theirinitialstateisdescribedintheattachedcodesnippet.
Thecommandsavailabletoyouare:dec,inc,jnz,jz.

Youneedtoimplementmultiplicationbetweenr1andr2intor4.

movr1,a ;initializer1witha\\ movr2,b ;initializer2withb
movr3, 0 ;initializer3with 0 \\ movr4, 0 ;initializer4with 0
Giventwovariables,xandy,howcanyouswaptheirvalueswithoutusinganextravariable?

Giventwostacks(ofcharacters),oneofsizeN,andoneempty.Withnoadditionalmemory,youmust
checkwhetherthefullstackrepresentsapolynomial.

HowisDeMorgan'stheoremreflectedintheuseofdigitalcircuits?

ExplainanddemonstratetheuseofKarnaugh maps.

A.Usinghowmanybitswillwehavetorepresenttheresultofadding 2 bitswithfourbits?

B.ImplementthecomponentfromtheprevioussectionusingFA.

C.NowgiventhatthedelayforeachFAcomponentis3ns.Whatisthetotaldelayofthatcomponent
fromyourimplementation?

D.Nowyoucanusethemuxwithoutdelay,couldyoutakeadvantageofthistoimprovetheoverall
delayofthecomponent?Ifso,otherwiseexplain.

How many timesin arowdoesthedigit 0 appearattheendofthedecimal representationofthe
number 100 factorial?

DefineinCorJavaafunctioninterfaceforaqueue(FIFO).

Implementasystem(usinglogicandmemorycomponents)thatrecognizesthetypingofa 4 digitsafe
code.Eachdigitisrepresentedby 3 bits(ie 0 ‑ 7 canberepresented).
Eachinputtothesystemisalsorepresentedby 3 bits.Whenasequenceofdigitsisreceivedthatis
thesameasthesafecode,thesystemwilloutput'1',otherwise'0'.
Code: 4217 \Inout: 2742173454217485 \Output: 0000010000001000

A.DesignanFAandwritedownitstruthtable( 2 inputsandaninputcarrier).

B.Rightthroughthiscomponentconnects 232 bitinputs.

C.GiventhateachconnectorhasacalculationtimeTandanareaS.Whatisthestartingcalculation
time?Howmuchspacedoesthecomponenttakeup?

D.Nowwewouldliketoshortenthecalculationtime‑suggestafasterway.Howmuchspacewillthe
componentoccupy?

E.Howlongwillittakefortheoutputtobedividedintonlevels?Expressthedelayusingn.

F.Whatistheoptimaln?

Youaregiventheboxdescribedin thedrawing.Theboxcontains 7 resistorswithdifferentvalues.
Usingavoltagesourceandacurrentmeter,findtheresistancesofalltheresistorsinthebox.

Whatkindofsortingdoyouknow?implementit.

Twocontainersaregiven.Thefirstcontainerhasaliterofmilkandthesecondcontainerhasaliterof
chocolatesyrup.Takeaglassfromthefirstcontainer,pouritintothesecondcontainer,andmix.Then
takeaglassfromthesecondcontainer,pouritbackintothefirstcontainer,andmixagain.Whatisthe
ratio between the concentration of the milk in the first container and the concentration of the
chocolatesyrupinthesecondcontainer?

WritethefunctioninC:Givenanintnumberreturnsastringofitsbinaryrepresentation.

char* intToBinary(int num)
{
//Example:
//Input: 2024
//Output:"2024"
}

A.WriteafunctioninCthatacceptsa 4 ‑byteintegerandreturnsthenumberofones(setbits)inits
binaryrepresentation.

B.Becauseyouareworkingonareal‑timesystem,youarerequiredtoperformthisoperationquickly.
Performing 32 iterationsforeachuseisconsideredtoocostlyintermsofperformance.

Givenanarrayofsizen.
Allthenumbersintherange[m, ... , m + n + 1]areinthisarray,exceptfortwo,whichare
neithertheminimumnorthemaximum.Forexample,ifn=6,m=2andthearraycontainsthenumbers
2 , 4 , 6 , 7 , 8 , 9 thenthenumbers 3 and 5 aremissing.Thearrayisnotsorted.

Howcanyoufindoutintwopassesoverthearraywhatthemissingnumbersare?Itisforbiddento
useanamountofmemorythatdependsonthesizeofthearray(ieitisallowedtouseonlyafixed
amountofmemory).Note:nandmaregiven.

Similarquestion: Givenanarrayofnumberscontainingndifferentnumbersintherange[0, n],
returntheonlynumberintherangethatismissingfromthearray.Input:nums=[1,0,3,4]\Output: 2

Aregisterdataofunknownlengthinbits,initializedtounknownvalues.Usingthefollowingfunctions,
youneedtofindthelengthoftheregister(howmanybitstheregisterholds).

❕Notethataccesstotheregisteriscyclical,forexample,ifweaccessthe11thbitinaregisterof
size 10 wewillgetthevalueofthefirstbit.

Register register;

bool read(int bit)
{
return register[bit % NUMBER_OF_BITS];
}

bool set_bit(int bit, bool value)
{
register[bit % NUMBER_OF_BITS]= value; //set 1 bit
}

Stateandexplain 3 practicalusesforanXORgate.

Givenamemoryareaofsize 512 bytes.Thememoryshouldbeinitializedsothatthevalueofthefirst
byte( 8 bits)is 0 ,thesecond 1 ,thethird 2 thefourth 3 ,andsoonuntil 511 (thelastvalueinthe
array).
Accesstothismemoryareaisthroughanarrayofintegers(thereforeitssizewillbe512/4=128).
Usingthegivenfunction,youmustimplementatestthatreturnstrueifthearrayisinitializedcorrectly,
andfalseotherwise.

arr[ 128 ] = {...}

int read(index i)
{
return arr[i];
}

Using logic gates, implement a component that accepts 8 bits, andreturns alit bitonly forthe
leftmostbit(MSB)thatislit

Implementthedivisionoftwointegersinassemblyusingthefollowingcommands:dec,inc,jnz

Ananalogaudiosignalisgiven.Wewanttosampleitinordertoprocessfrequenciesupto
fc = 30KHz.

A.Atwhatfrequencyisthesignalrequiredtobesampledandwhy?
B.Whatotheroperationisrequiredtobedoneonthesignalapartfromsampling?

WritethecomputerassemblycodefortheNth Fibonacci number.Youcanassumethatthevalue
Nisinaregisternamedr1.
Thecommandsatyourdisposal:mov,cmp,beq,sub,add,bne.

ImplementXORusingonlyNANDgates.

Writeafunctionthatacceptsanaturalintegerandcheckswhetheritisapowerof 2.
Itisnecessarytofindanefficientsolution.

WhatcangowrongifweconnectanasynchronoussignaldirectlytothedatainputofFlip-flop?

Explaintheconceptofskewinanelectroniccircuitandhowitcanbereduced.

Givenboxeswithballs:blueballs,redballs,andamixedbox.
Oneachboxiswrittenwhichtypeitdoesnotbelongto‑forexampleontheboxofredballstherecan
beanote"blueballs"or"mixedballs".
Youmustdeterminethecontentsoftheboxesbydrawingtheminimumnumberofballs.

Youhaveanarrayofnumbers.Writeafunctiontosorttheminrandomorder.

❕Youhaveatyourdisposalarandfunctionthatreturnsanintegerrandomnumber.

ExplainhowSRFFworks.
Writethetruthtable.

WhataretheadvantagesofanEmbedded system?

Withoutusingcomparisonoperators(==, !=, <, >, <=, >=)andwithoutarithmeticoperators
(+, -, *, /),implementafunctionthatcheckswhether 2 numbersareequal.

Givenastatemachinewith 10 states,howmanyFFwillweneedtoimplementthecircuit?

Giventhe 3 functionsinthecodesection:

A.Implementthefunctionmalloc(int)whoseroleistoallocatememoryofanysize,inmultiplesof
16 bytes.

B.Implementthefunctionfree(void*)whoseroleistoreleasememorythatwasallocatedbythe
previousfunction.

C.Improvethefreefunctionsothatitprintsanerrormessagewhenthereisanattempttorelease
memorythathasalreadybeenreleasedinthepast.

//Therearefunctionsforallocatingandreleasingdynamicmemory:
OS_small_malloc(int sz); //Canallocateupto 512 bytesatmost.
OS_large_malloc(int sz); //Canallocateatleast 512 bytes.
OS_free(void* p, int sz); //Releasesszbytesfromthememoryaddressp.

Givenasquare‑shapedboard.Ineachcorneroftheboardthereisaswitch,andinthecenterisa
lightbulb.Thelightisonifalltheswitchesareinthesamestate(open\closed)itisnotknownineach
switchwhatisopenandwhatisclosed.Eachtimeyou areallowedtoentertheroomandchange
some of theswitches. Ifafter thatthebulb has notturned on,you leavetheroomandthetable
rotatesrandomly.Howcanyouturnonthebulbforsure?

It is required to check in the system whether a 64 ‑bit variable (unsigned long
long)hasalltheLSBson,uptoacertainbit,andthenonlyzeros.inthemostefficient
way.
Input (binary representation): '0...101010110111' ( 64 bits)
Output: false

Input (binary representation): '00000{only ' 0 '}0001111111111' ( 64 bits)
Output: true

Writecodeinahardwarelanguage,VerilogorVHDL,toimplementaMUX 4:1.

Whatislatch‑upinchipdesign?Howcanitbeprevented?

A.Isitpossibletocreatetheexpressionabc'usingonlymuxcomponents?

B.TheanswerinAisno,youhavetousetheconstantsbecauseitisanincompletesystem.
Nowtheexpressionneedstobeimplementedusingmuxes(minimumnumber)andconstants.

Applythemultiplicationofanynumberby 7 withoutusingmultiplicationoraddition.

Implement a function that returns the minimum between 2 numbers, without using comparison
operators(>,<).

GivenalogicalunitwithtwoinputsAandBandtwooutputsCandD.Usingonlyunitsofthistype,you
needtobuildanewunitwith 4 inputsand 4 outputs,sothatthenumbersontheoutputsaresortedin
ascendingorder.
Theimplementationshouldbeassimpleaspossible(usingasfewunitsaspossible).

AComponentwithtwoinputsisgiven.Ininput 1 thereisXwith 4 bitsandininput 2 thereisX+2also
with 4 bits.Theoutputofthecomponentisa 4 bitX+1.

YouneedtoimplementthatcomponentwithoutusingAddersorSubtractors.

WhatisthemeaningofthevalueX&Zindigitalcircuits?

Whatispowerconsumptioninchipdesign?Howcanitbeminimized?

Givenaretwoswitchesandalightbulb.Eachswitchhastwostates(upordown),andthelightbulb
alsohastwostates(onoroff).Achangeinthestateofeitherswitchcausesachangeinthestateof
thelightbulb.

A.Designanelectricalcircuitforthissystem.
B.Solvethesameproblemforthreeswitches.

You havea blackbox thatcansort 500 objectsatatime,andan arrayof 1000 objectsthatyou
wouldliketosort.Findawaytosortthearraywithminimaluseoftheblackbox(everyuseisvery
expensive).

Given aFlip-flop (DFF) with inputs dataand clk, and output Q, you needtoimplementa
Flip-flopwithanenableinputusingthiscomponentandotherlogicalcomponents.

WritetheT_setup and T_hold equationandexplainit.

Explainwhatacompletesetandsemi-completesetofoperationsare.

Implementthefollowingfunction:
//Implement:
#defineMOST_BITS(a,b,c)

example:
a = 00110010
b = 01101110
c = 10010010
MOST_BITS(a,b,s)= 00110010

Youneedtoprint thesquarevalueofallnumbersfrom 1 toN,in themostefficientway,usingthe
followingoperations:
‑add(+)isequaltoasingleclockcycle.
‑Multiplication(*)equals 8 clockcycles.

Forexample,thefollowinglineofcodetakes 9 clockcycles:
res = 3 + 2 * 10

Input: 7
Output: 1 4 9 16 25 36 49

Givenasortedarray,deletethenumbersthatappearmorethanonce.Doitinplace(ieontheoriginal
array).❕Thelargestnumberinthearrayis1000.
Input: nums = [ 1 , 1 , 2 ]
Output: nums = [ 1 , 2 ,_]

Input: nums = [ 1 , 1 , 2 , 3 , 3 , 4 , 5 ]
Output: nums = [ 1 , 2 , 3 , 4 , 5 ,,]

Givenacomponentwith 3 inputsand 2 outputs.
Thecomponentoutputsanumberof'ones'thatareintheinput.

Forexample,forinputs 001 , 010 , 100 ‑theoutputwillbe 01 (one'one').
Forinputs 011 , 101 , 110 ‑theoutputwillbe 10 (two'ones').
Forentrance 111 ‑atoutput 11 (three'ones').

Fromtheabovecomponentonlyyouneedtobuildacomponentwith 7 inputsand 3 outputswiththe
samefunctionality.

HowmanyMux 2:1elementswillweneedtoimplementMux 2^n:1?

Givenanarraywhereallvaluesappearexactlytwice,exceptfortwonumbersthatappearonlyonce,
you needto find these twounique numberswithconstantspacecomplexity(ie.,withoutusingan
auxiliaryarray).

Please note, thisquestion is afollow‑up to asimplerversionfound on thissite, whereonly one
numberappearsonceoranoddnumberoftimes.Itisadvisabletosolvethesimplerproblemfirst
beforeattemptingthecurrentquestion.

Input: [ 1 , 3 , 2 , 1 , 5 , 2 , 7 , 3 ]
Output: [ 5 , 7 ]

Implementaswapbetween 2 variableswithoutusinganauxiliaryvariable.Follow‑up:Doitinoneline.

Withthehelpofa 3 bitcounter,describedinthedrawing,implementasystemthatdetects 5 clock
riseoftheinputsignal(afterevery 5 clockrisewewillgeta'1'attheoutput,otherwisea'0').

Wedefine amiddle groupasfollows: Consider twopositiveintegersfor whichan integerexactly
betweenthemexists.Forexample:

🔹[1,5]yieldsamiddleof 3.
🔹[2,6]yieldsamiddleof 4.
🔹[10,20]yieldsamiddleof 15.

A. Given astreamof unique positivewhole numbers,each arriving once persecond, howmany
secondswillpassbeforeyoucanbe certainthatatleasttwonumbersconstitutingamiddlegroup
havebeenreceived?

B.Now,supposethefunctionreturnsatwo‑dimensionalvector.Howmanysecondswillelapsebefore
wecandefinitelysaythattwovectorshavebeenreceivedthatestablishamiddlegroup?

C. Ifthefunction returns anN‑dimensionalvector,howmanysecondswillpassbeforewecanbe
certainthatNvectorshavebeenreceivedwhichdeterminesamiddlegroup?

Three people wantto know what their averagesalaries are.Howcantheycalculate thisaverage
withoutanyonerevealingtootherswhathissalaryis(andwithoutthehelpofanotherperson)?

Needtodesignaprocessorwithcommandsoffixedlength.Eachcommandconsistsofanoperation
+operands,withatotallengthof 12 bits.
Thepossibleoperandsare 3 bitaddresses.Therequiredcommandsetincludes:

🔹 4 operationsthatreceivethreeoperandseach.
🔹 255 operationsthatreceiveoneoperandeach.
🔹 16 operationsthatdonotreceiveoperandsatall.

A.Isitpossibletodesignsuchaprocessor?explanation.
B.Formulateaconditionthatwillcheckifitispossibletodesignaprocessorforthegeneralcase:

🔹K1operationsthatreceiveP1operandswithalengthofL1bits.
🔹K2operationsthatreceiveP2operandswithalengthofL2bits.

Given 10 ropes,amonkeyishangingfromone, butyoucannotseewhichone.Totranquilizethe
monkey,youmustshootananestheticdartatoneoftheropes.Ifthemonkeyisnothitbythedart,it
willmovetotheropetoitsrightortoitsleft,dependingonitscurrentposition.Yourgoalistofindand
tranquilizethemonkeyusingthefewestnumberofshots.

https://en.wikipedia.org/wiki/MIPS_architecture

Whatisamicrocontroller?Howisitdifferentfromamicroprocessor?

Designasystemthatupdatesacounterofthenumberofpeoplepresentatanygivenmomentina
certainroom.Youhave 2 motionsensorsandacounteratyourdisposal.Whenthemotionsensor
detectsapersonpassingthroughit,itoutputsalogical'1'signal,andwhenthereisnomovement,it
outputsalogical'0'.❕Itcanbeassumedthateverypersonleavingorenteringtheroompasses
throughthe 2 sensors.

ExplainwhatJitteris.

Describeanalgorithmformanaginganelevatorsystem.

GivenaprocessorconnectedtoamemoryareanamedProgandanothernamedData,whereProg
containscodeandDatacontainsdata.TheconnectiontoDataisthroughan 8 bitwideline,anditis
possiblethatsomeofthesebitsaredisconnected,alwaysreturningaconstant 0 .Writeafunctionto
bestoredinProgthatwillidentifythefirstdisconnectedbit.

HowmanyAND,OR,andXORgatesarerequiredtocreateaFull Adder (FA)?

ImplementadatastructureFastArray(thelanguageofyourchoice\pseudocode)thatwillperform
thefollowingmethodsatO(1)timecomplexity:

int Get(int index)
{
//TimecomplexityO(1)
}

int Set(int index, int value)
{
//TimecomplexityO(1)
}

int SetAll(int value)
{
//TimecomplexityO(1)
}

A.Whatisthedifferencebetweenregular shiftersandbarrel shifters?
B.Implementbarrel shifterusingonlyMUX 2:1components.

Implementadigitalcircuitthatmaintainsthefollowingwavediagram:

Givenannbitsvalue,howcanyoutellifitisanintegerpowerof 2?

Follow‑up:itisrequiredtodothisinaconstanttime,whichmeansthatasolutionwithaloopoflength
n(thenumberofbits)isnotoptimal.

Implementalogiccomponentthatoutputsthesquaresofnumberssequentially,receivingnewinput
oneachrisingedgeoftheclock,withoutusingamultiplexer.
Input: 1 , 2 , 3 , 4 , 5 , 6 ,..., 10 ,...
Output: 1 , 4 , 9 , 16 , 25 , 36 ,..., 100 ,...

Given are 100 light bulbsinarow,allinitiallyturnedoff.Thefirstpersongoesdownthelineand
toggleseveryswitch.Thesecondpersongoesdownthelineandtoggleseverysecondswitch.The
thirdpersontoggleseverythirdswitch.Thiscontinueswith 100 people.
Whichlightbulbswillremainlitintheend?

2 housepainterspaint 100 doors,andeverydayadifferentdoor.Onepaintseveryseconddoor( 2 ,
4 , 6 ,...)fromthebeginning,andonepaintseverythirddoorfromtheend( 100 , 97 , 94 ...).Weneed
tofindoutifandwhentheywillmeet.

A.DescribetheverificationenvironmentoftheAPBprotocol.
B.Whatsequencewouldyouinsertinto theenvironmenttocheckthattheenvironmentisworking
properly?
C.Wouldyouenterinvaliddatainadvancetocheckthatthesystemknowshowtoissueanerror?

Whatistheroleofstatictiminganalysisinchipdesign?

GivenanarrayofNintegers,whichincludesallvaluesintherange( 0 toN-1). Oneofthenumbers
appearsinthearraytwice.
Finditsvalue,inonepassoverthearrayandinO(1)spacecomplexity.

Givenacardthatincludesaprocessor,aninternalmemoryof8KB,andanexternalmemoryof60KB,
Also,threeoperationsaredefined:

🔹Load(loc, buf):loading1KBfromthelocaddressintheexternalmemorytothebufaddressin
theinternalmemory‑ 250 cycles.
🔹Store(loc, buf):loading1KBfromtheaddressbufintheinternalmemorytotheaddressloc
intheexternalmemory‑ 250 cycles.
🔹Process(buf):processingof1KBofdataataddressbufintheinternalmemory‑ 600 cycles.

Operations 1 and 2 are DMAoperations,andeachofthemcan beperformedatthesametimeas
operation 3 (butnotatthesametimeasthesecondoperation).

Writeaprogramasquicklyaspossiblethatreads60KBofdatafromexternalmemory,processesitin
internalmemory,andthenwritesitbacktotheexternalmemory.Itispermissibletoassumethatthe
programcodedoesnotoccupyspaceintheinternalmemory.

WhatdoesthecircuitdototheinputsignalVin?
Writeaprogramthatcountsthenumberof'on'(setto 1 )bitsinabyte.Then,modifyittoensurethatit
operatesinafixedamountoftime.Whatisthetrade‑off?

Youneedtoimplementastatemachinewhichisaserialdetector,foraserialcarlock.Thecarcode
isABCD,soeverytimethissequenceispressed,themachinewilloutput'1',otherwise'0'.

A.Giventwobooleanvariables, xandy,createexpressionsthatsimulatethelogicgatesOR,AND,
NOT, XOR using only the arithmetic operators +,-,*, and constants ‑ avoid using the logical
operators(||,&&,!,etc).

B.Swapthevaluesoftwointegervariableswithoutusinganauxiliaryvariable.

Implement a double‑stack data structure that, for every push and pop operation, takes two
parameters:avalueandanindex( 0 forthefirststackor 1 forthesecondstack).Youhaveasingle
arrayofsizeNatyourdisposal.

push( 5 , 0 ); // push value 5 to stack0

push( 7 , 1 ); // push value 7 to stack1

pop( 1 ) //output: 7

A.Implementafunctionthattakesstringsandreversesthem;forexample,"cisco"becomes"ocsic".

B.Dothiswithoutusingextramemory(ie.,donotuserecursionorastack).

C.Youareworkingwiththesystemdepictedintheattachedfigure.Thissystemreceivesasentence,
extracts certaininformation from it,andthenitmusttransferthesentencetothenextcomponent.
However, due to a bug, the sentence is output in reverse order. You must add code(the blue
component)sothatthesystemwillfunctioncorrectly.Usethefunctionyouimplementedinstep 2 and
ensureitutilizespersistentmemory.

Acomponentisgiventhatreceivesaclocksignalandisadditionallyfedastreamofbitsthatisan
indicationof whetheran error hasoccurredinthesystemornot.Boththeclockandtheindicator
enterthesystemeveryms.Fortheindicatorthevalue'1'representsan error('0'isnormal).A
systemisconsideredmalfunctioningandshouldbetakenoutofusewhen 10 errorsarereceivedper
second.

Howcanyoufindoutthatthesystemisfaulty?

Hint:usingtheclockyoucanrealizeatimersothatweknowatwhattimeeachbitfromtheindicator
wasreceived(toproduceaninfinitetimestamp).

A.Youhaveamemoryspacewith 32 addresses,eachaddressis 32 bitsinsize.
Howwillyoumanageit(allocationandreleaseofaddresses)usingtwo 32 bitregisters?
B.ImplementinCPP/JAVA/C.
C.Nowthememoryspacehas 64 addresses,howcanyoustillconnectonly 2 registers,howwillyou
implementthis?

Givenanexpressionthatcontainsthreetypesofbrackets:(), [], {}.

A.Describeanalgorithmthatcheckswhethertheexpressionisvalidornot.
B. The same problem, only now when there is afourthtype ofparentheses, wherethere is no
differencebetweenaleftparenthesisandarightparenthesis:| |

Writeafunctionthatreceivesasquarematrixofnumbers(anequal numberofrowsandcolumns)
andthesizeofthematrix,andinvertsit(i.e.transposesit).
Withoutusingadditionalmemory.

Station A transmits messages to Station H atarate ofone messageper millisecond.Station H
acknowledges(Acks)eachmessagetoStationAatthesamerate.EverymessagehasauniqueID
number.AlthougheachAckfromStationHcorrespondstoamessagesentbyStationA,theorderof
theAcksmaynotmatchtheorderofthemessagessent.StationHisrequiredtoreturnanAckfor
eachmessagefromStationAwithinamaximumofonesecond.StationBsitsbetweenStationsA
andHwiththeresponsibilityofidentifyingfaults.

ThedescriptionshoulddetailthedatastructuremanagedatStationBanditsutilization.