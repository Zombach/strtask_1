import sequtils, strutils, unicode  # Все нужные библиотеки уже подключены

var text = """Фонетическое значение буквы "ë" невозможно переоценить. Эта буква служит способом обозначить мягкость звука "е". Например, в словах "мëд", "лëд" и "снег" буква "ë" подчеркивает, что предшествующий ей согласный произносится мягко. Это важный аспект, так как мягкость согласных в русском языке играет ключевую роль в звучании слов и может изменять их смысл. Буква "ë" используется в непосредственно ограниченном количестве слов, что делает еë менее распространенной, чем другие буквы. Однако именно это употребление в значимых контекстах и делает еë важной. слова, содержащие букву "ë", такие как "рëбра", "жëсткий" или "дëготь", нельзя заменить аналогичными словами с "е", так как это изменит их звучание и приведëт к утрате их первоначального смысла. Чтобы лучше понять использование буквы "ë", рассмотрим конкретные примеры. слова "мëд", "ëлка", "горëшь", "снег", "чëрный" — все они иллюстрируют, как важна буква "ë" в передаче их правильного звучания и смысла. Изменение одной буквы может полностью изменить смысл слова. Например, "лëд" и "лед" — это два абсолютно разных слова с разными значениями."""

# Ниже произведите действия над переменной text
text = text.replace("е", "ë");
var lines = split(text, ".");
lines = filter(lines, proc(line: string): bool = line != "");
lines = map(lines, proc(line: string): string = "." & $strutils.strip(line.reversed()));
text = lines.join("\n");

# Не трогайте эту часть кода. Выводить text в консоль не обязательно.
doAssert text == """.ьтинëцоëрëп онжомзовëн "ë" ывкуб ëинëчанз ëоксëчитëноФ
."ë" акувз ьтсокгям ьтичанзобо мобосопс тижулс авкуб атЭ
.окгям ястисонзиорп йынсалгос йë йищюувтсëшдëрп отч ,тëавикрëчдоп "ë" авкуб "гëнс" и "дëл" ,"дëм" хаволс в ,рëмирпаН
.лсымс хи ьтянëмзи тëжом и волс ииначувз в ьлор юувëчюлк тëарги ëкызя мокссур в хынсалгос ьтсокгям как кат ,ткëпса йынжав отЭ
.ывкуб ëигурд мëч ,йоннëнартсорпсар ëëнëм ëë тëалëд отч ,волс ëвтсëчилок моннëчинарго оннëвтсдëрсопëн в ястëузьлопси "ë" авкуБ
.йонжав ëë тëалëд и хатскëтнок хымичанз в ëинëлбëртопу отэ оннëми окандО
.алсымс огоньлачановрëп хи ëтарту к тëдëвирп и ëиначувз хи тинëмзи отэ как кат ,"ë" с имаволс имынчиголана ьтинëмаз язьлëн ,"ьтогëд" или "йиктсëж" ,"арбëр" как ëикат ,"ë" увкуб ëищажрëдос ,аволс
.ырëмирп ëынтëркнок миртомссар ,"ë" ывкуб ëинавозьлопси ьтяноп ëшчул ыботЧ
.алсымс и яиначувз огоньливарп хи ëчадëрëп в "ë" авкуб анжав как ,тюуриртсюлли ино ëсв — "йынрëч" ,"гëнс" ,"ьшëрог" ,"аклë" ,"дëм" аволс
.аволс лсымс ьтинëмзи юьтсонлоп тëжом ывкуб йондо ëинëнëмзИ
.имяинëчанз имынзар с аволс хынзар онтюлосба авд отэ — "дëл" и "дëл" ,рëмирпаН"""