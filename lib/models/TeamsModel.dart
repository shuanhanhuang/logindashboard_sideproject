class TeamsModel {
  String title;
  String desc;
  String img;
  String describe;
  bool isActive;

  TeamsModel({
    this.title,
    this.desc,
    this.img,
    this.describe,
    this.isActive,

  });

}

List<TeamsModel> teams = [

  TeamsModel(
      title: "Brothers",
      desc: "Run It Back",
      img: "assets/images/brother_logo.jpg",
      describe:"中信兄弟是台灣一支職業棒球隊，主場為臺中洲際棒球場。前身兄弟象隊，是中華職棒四支創始球隊之一，分別在1992年至1994年和2001年至2003兩度締造三連霸紀錄，成為中職至今唯一的球隊。拿下過十七次季冠軍及八次台灣大賽冠軍。",
      isActive: false
  ),
  TeamsModel(
      title: "UNILIONS",
      desc: "大勝獅吼",
      img: "assets/images/lion-logo.jpg",
      describe:"統一7-ELEVEn獅是一支台灣職業棒球隊，隸屬於中華職棒，為中華職棒開朝元老之一，也是至今唯一無易主過並持續參賽的球隊。主場為臺南市立棒球場。加入中職至今，累計共取得10次總冠軍及15次季冠軍，其中10次總冠軍為各隊之冠。",
      isActive: true
  ),
  TeamsModel(
      title: "Rakuten Monkey",
      desc: "Rise Up",
      img: "assets/images/Rakuten_Monkeys_logo.png",
      describe:"樂天桃猿是一支台灣職業棒球球隊，隸屬於中華職棒。此隊為日商樂天株式會社旗下的職業運動隊伍之一，主場位於樂天桃園棒球場。2006年奪下隊史首冠，2012年奪下搬至桃園後的首冠，緊接在2014、15年達成二連霸，2017–19年締造三連霸。",
      isActive: true
  ),
  TeamsModel(
      title: "Dragons",
      desc: "龍往直前",
      img: "assets/images/dragon-logo.jpg",
      describe:"味全龍，是臺灣的一支職業棒球隊，為中華職棒創立時的元老四支球隊之一，曾於1999年一度解散，2019年以「味全龍」之名重建職棒球隊。重建後，味全龍即拿下2020年中華職棒二軍總冠軍。經歷一年二軍賽事後，2021年球季重返一軍賽場。",
      isActive: false
  ),
  TeamsModel(
      title: "Fubon Guardians",
      desc: "We Will",
      img: "assets/images/fubon-logo.jpg",
      describe:"富邦悍將是一支台灣職業棒球隊，隸屬於中華職棒。主場為新北市立新莊棒球場。富邦金控成為臺灣目前同時擁有職業棒球隊以及職業籃球隊（臺北富邦勇士）之企業。包括其前身俊國熊、興農牛、義大犀牛，共贏取八次季冠軍及三次總冠軍。",
      isActive: false
  )

];