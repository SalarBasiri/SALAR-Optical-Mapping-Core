unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TeEngine, Series, TeeProcs, Chart, ExtDlgs,
  ComCtrls, Menus, jpeg;

type
  ar_2d_real = array [0..2000,0..50000] of real;
  ar_2d_small = array[0..2000,0..2000] of integer;
  ar_1d = array [0..5000] of integer;
  ar_1d_small = array [ 0..2000] of integer;
  ar_1d_small_real = array [ 0..2000] of real;

  TForm1 = class(TForm)
  
  GroupBox1: TGroupBox;

    Image1: TImage;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    Series11: TLineSeries;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Series15: TLineSeries;
    Series16: TLineSeries;
    Series17: TLineSeries;
    Series18: TLineSeries;
    Series19: TLineSeries;
    Series20: TLineSeries;
    Series21: TLineSeries;
    Series22: TLineSeries;
    Series23: TLineSeries;
    Series24: TLineSeries;
    Series25: TLineSeries;
    Series26: TLineSeries;
    Series27: TLineSeries;
    Series28: TLineSeries;
    Series29: TLineSeries;
    Series30: TLineSeries;
    Series31: TLineSeries;
    Series32: TLineSeries;
    Series33: TLineSeries;
    Series34: TLineSeries;
    Series35: TLineSeries;
    Series36: TLineSeries;
    Series37: TLineSeries;
    Series38: TLineSeries;
    Series39: TLineSeries;
    Series40: TLineSeries;
    Series41: TLineSeries;
    Series42: TLineSeries;
    Series43: TLineSeries;
    Series44: TLineSeries;
    Series45: TLineSeries;
    Series46: TLineSeries;
    Series47: TLineSeries;
    Series48: TLineSeries;
    Series49: TLineSeries;
    Series50: TLineSeries;
    Series51: TLineSeries;
    Series52: TLineSeries;
    Series53: TLineSeries;
    Series54: TLineSeries;
    Series55: TLineSeries;
    Series56: TLineSeries;
    Series57: TLineSeries;
    Series58: TLineSeries;
    Series59: TLineSeries;
    Series60: TLineSeries;
    Series61: TLineSeries;
    Series62: TLineSeries;
    Series63: TLineSeries;
    Series64: TLineSeries;
    Series65: TLineSeries;
    Series66: TLineSeries;
    Series67: TLineSeries;
    Series68: TLineSeries;
    Series69: TLineSeries;
    Series70: TLineSeries;
    Series71: TLineSeries;
    Series72: TLineSeries;
    Series73: TLineSeries;
    Series74: TLineSeries;
    Series75: TLineSeries;
    Series76: TLineSeries;
    Series77: TLineSeries;
    Series78: TLineSeries;
    Series79: TLineSeries;
    Series80: TLineSeries;
    Series81: TLineSeries;
    Series82: TLineSeries;
    Series83: TLineSeries;
    Series84: TLineSeries;
    Series85: TLineSeries;
    Series86: TLineSeries;
    Series87: TLineSeries;
    Series88: TLineSeries;
    Series89: TLineSeries;
    Series90: TLineSeries;
    Series91: TLineSeries;
    Series92: TLineSeries;
    Series93: TLineSeries;
    Series94: TLineSeries;
    Series95: TLineSeries;
    Series96: TLineSeries;
    Series97: TLineSeries;
    Series98: TLineSeries;
    Series99: TLineSeries;
    Series100: TLineSeries;
    Series101: TLineSeries;
    Series102: TLineSeries;
    Series103: TLineSeries;
    Series104: TLineSeries;
    Series105: TLineSeries;
    Series106: TLineSeries;
    Series107: TLineSeries;
    Series108: TLineSeries;
    Series109: TLineSeries;
    Series110: TLineSeries;
    Series111: TLineSeries;
    Series112: TLineSeries;
    Series113: TLineSeries;
    Series114: TLineSeries;
    Series115: TLineSeries;
    Series116: TLineSeries;
    Series117: TLineSeries;
    Series118: TLineSeries;
    Series119: TLineSeries;
    Series120: TLineSeries;
    Series121: TLineSeries;
    Series122: TLineSeries;
    Series123: TLineSeries;
    Series124: TLineSeries;
    Series125: TLineSeries;
    Series126: TLineSeries;
    Series127: TLineSeries;
    Series128: TLineSeries;
    Series129: TLineSeries;
    Series130: TLineSeries;
    Series131: TLineSeries;
    Series132: TLineSeries;
    Series133: TLineSeries;
    Series134: TLineSeries;
    Series135: TLineSeries;
    Series136: TLineSeries;
    Series137: TLineSeries;
    Series138: TLineSeries;
    Series139: TLineSeries;
    Series140: TLineSeries;
    Series141: TLineSeries;
    Series142: TLineSeries;
    Series143: TLineSeries;
    Series144: TLineSeries;
    Series145: TLineSeries;
    Series146: TLineSeries;
    Series147: TLineSeries;
    Series148: TLineSeries;
    Series149: TLineSeries;
    Series150: TLineSeries;
    Series151: TLineSeries;
    Series152: TLineSeries;
    Series153: TLineSeries;
    Series154: TLineSeries;
    Series155: TLineSeries;
    Series156: TLineSeries;
    Series157: TLineSeries;
    Series158: TLineSeries;
    Series159: TLineSeries;
    Series160: TLineSeries;
    Series161: TLineSeries;
    Series162: TLineSeries;
    Series163: TLineSeries;
    Series164: TLineSeries;
    Series165: TLineSeries;
    Series166: TLineSeries;
    Series167: TLineSeries;
    Series168: TLineSeries;
    Series169: TLineSeries;
    Series170: TLineSeries;
    Series171: TLineSeries;
    Series172: TLineSeries;
    Series173: TLineSeries;
    Series174: TLineSeries;
    Series175: TLineSeries;
    Series176: TLineSeries;
    Series177: TLineSeries;
    Series178: TLineSeries;
    Series179: TLineSeries;
    Series180: TLineSeries;
    Series181: TLineSeries;
    Series182: TLineSeries;
    Series183: TLineSeries;
    Series184: TLineSeries;
    Series185: TLineSeries;
    Series186: TLineSeries;
    Series187: TLineSeries;
    Series188: TLineSeries;
    Series189: TLineSeries;
    Series190: TLineSeries;
    Series191: TLineSeries;
    Series192: TLineSeries;
    Series193: TLineSeries;
    Series194: TLineSeries;
    Series195: TLineSeries;
    Series196: TLineSeries;
    Series197: TLineSeries;
    Series198: TLineSeries;
    Series199: TLineSeries;
    Series200: TLineSeries;
    Series201: TLineSeries;
    Series202: TLineSeries;
    Series203: TLineSeries;
    Series204: TLineSeries;
    Series205: TLineSeries;
    Series206: TLineSeries;
    Series207: TLineSeries;
    Series208: TLineSeries;
    Series209: TLineSeries;
    Series210: TLineSeries;
    Series211: TLineSeries;
    Series212: TLineSeries;
    Series213: TLineSeries;
    Series214: TLineSeries;
    Series215: TLineSeries;
    Series216: TLineSeries;
    Series217: TLineSeries;
    Series218: TLineSeries;
    Series219: TLineSeries;
    Series220: TLineSeries;
    Series221: TLineSeries;
    Series222: TLineSeries;
    Series223: TLineSeries;
    Series224: TLineSeries;
    Series225: TLineSeries;
    Series226: TLineSeries;
    Series227: TLineSeries;
    Series228: TLineSeries;
    Series229: TLineSeries;
    Series230: TLineSeries;
    Series231: TLineSeries;
    Series232: TLineSeries;
    Series233: TLineSeries;
    Series234: TLineSeries;
    Series235: TLineSeries;
    Series236: TLineSeries;
    Series237: TLineSeries;
    Series238: TLineSeries;
    Series239: TLineSeries;
    Series240: TLineSeries;
    Series241: TLineSeries;
    Series242: TLineSeries;
    Series243: TLineSeries;
    Series244: TLineSeries;
    Series245: TLineSeries;
    Series246: TLineSeries;
    Series247: TLineSeries;
    Series248: TLineSeries;
    Series249: TLineSeries;
    Series250: TLineSeries;
    Series251: TLineSeries;
    Series252: TLineSeries;
    Series253: TLineSeries;
    Series254: TLineSeries;
    Series255: TLineSeries;
    Series256: TLineSeries;
    Series257: TLineSeries;
    Series258: TLineSeries;
    Series259: TLineSeries;
    Series260: TLineSeries;
    Series261: TLineSeries;
    Series262: TLineSeries;
    Series263: TLineSeries;
    Series264: TLineSeries;
    Series265: TLineSeries;
    Series266: TLineSeries;
    Series267: TLineSeries;
    Series268: TLineSeries;
    Series269: TLineSeries;
    Series270: TLineSeries;
    Series271: TLineSeries;
    Series272: TLineSeries;
    Series273: TLineSeries;
    Series274: TLineSeries;
    Series275: TLineSeries;
    Series276: TLineSeries;
    Series277: TLineSeries;
    Series278: TLineSeries;
    Series279: TLineSeries;
    Series280: TLineSeries;
    Series281: TLineSeries;
    Series282: TLineSeries;
    Series283: TLineSeries;
    Series284: TLineSeries;
    Series285: TLineSeries;
    Series286: TLineSeries;
    Series287: TLineSeries;
    Series288: TLineSeries;
    Series289: TLineSeries;
    Series290: TLineSeries;
    Series291: TLineSeries;
    Series292: TLineSeries;
    Series293: TLineSeries;
    Series294: TLineSeries;
    Series295: TLineSeries;
    Series296: TLineSeries;
    Series297: TLineSeries;
    Series298: TLineSeries;
    Series299: TLineSeries;
    Series300: TLineSeries;
    Chart2: TChart;
    Series302: TLineSeries;
    Series303: TLineSeries;
    Series304: TLineSeries;
    GroupBox2: TGroupBox;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label5: TLabel;
    RadioButton4: TRadioButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Button7: TButton;
    Label8: TLabel;
    Edit7: TEdit;
    Button8: TButton;
    animate_timer: TTimer;
    Label9: TLabel;
    Label10: TLabel;
    ProgressBar1: TProgressBar;
    Process_timer: TTimer;
    Label11: TLabel;
    Edit8: TEdit;
    Label12: TLabel;
    Edit9: TEdit;
    Label13: TLabel;
    Edit10: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox4: TGroupBox;
    Image2: TImage;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Series301: TLineSeries;
    Series305: TLineSeries;
    Series306: TLineSeries;
    Series307: TLineSeries;
    Series308: TLineSeries;
    Series309: TLineSeries;
    Series310: TLineSeries;
    Series311: TLineSeries;
    Series312: TLineSeries;
    Series313: TLineSeries;
    Series314: TLineSeries;
    Series315: TLineSeries;
    Series316: TLineSeries;
    Series317: TLineSeries;
    Series318: TLineSeries;
    Series319: TLineSeries;
    Series320: TLineSeries;
    Series321: TLineSeries;
    Series322: TLineSeries;
    Series323: TLineSeries;
    Series324: TLineSeries;
    image_animate_timer: TTimer;
    Button12: TButton;
    Label23: TLabel;
    Image3: TImage;
    Series325: TLineSeries;
    Series326: TLineSeries;
    Series327: TLineSeries;
    Series328: TLineSeries;
    Series329: TLineSeries;
    Series330: TLineSeries;
    Series331: TLineSeries;
    Series332: TLineSeries;
    Series333: TLineSeries;
    Series334: TLineSeries;
    Series335: TLineSeries;
    Series336: TLineSeries;
    Series337: TLineSeries;
    Series338: TLineSeries;
    Series339: TLineSeries;
    Series340: TLineSeries;
    Series341: TLineSeries;
    Series342: TLineSeries;
    Series343: TLineSeries;
    Series344: TLineSeries;
    Series345: TLineSeries;
    Series346: TLineSeries;
    Series347: TLineSeries;
    Series348: TLineSeries;
    Series349: TLineSeries;
    Series350: TLineSeries;
    Series351: TLineSeries;
    Series352: TLineSeries;
    Series353: TLineSeries;
    Series354: TLineSeries;
    Series355: TLineSeries;
    Series356: TLineSeries;
    Series357: TLineSeries;
    Series358: TLineSeries;
    Series359: TLineSeries;
    Series360: TLineSeries;
    Series361: TLineSeries;
    Series362: TLineSeries;
    Series363: TLineSeries;
    Series364: TLineSeries;
    Shape1: TShape;
    Label24: TLabel;
    Edit12: TEdit;
    Label25: TLabel;
    Series365: TLineSeries;
    Series366: TLineSeries;
    Series367: TLineSeries;
    Series368: TLineSeries;
    Series369: TLineSeries;
    Series370: TLineSeries;
    Series371: TLineSeries;
    Series372: TLineSeries;
    Series373: TLineSeries;
    Series374: TLineSeries;
    Series375: TLineSeries;
    Series376: TLineSeries;
    Series377: TLineSeries;
    Series378: TLineSeries;
    Series379: TLineSeries;
    Series380: TLineSeries;
    Series381: TLineSeries;
    Series382: TLineSeries;
    Series383: TLineSeries;
    Series384: TLineSeries;
    Series385: TLineSeries;
    Series386: TLineSeries;
    Series387: TLineSeries;
    Series388: TLineSeries;
    Series389: TLineSeries;
    Series390: TLineSeries;
    Series391: TLineSeries;
    Series392: TLineSeries;
    Series393: TLineSeries;
    Series394: TLineSeries;
    Series395: TLineSeries;
    Series396: TLineSeries;
    Series397: TLineSeries;
    Series398: TLineSeries;
    Series399: TLineSeries;
    Series400: TLineSeries;
    Series401: TLineSeries;
    Series402: TLineSeries;
    Series403: TLineSeries;
    Series404: TLineSeries;
    Series405: TLineSeries;
    Series406: TLineSeries;
    Series407: TLineSeries;
    Series408: TLineSeries;
    Series409: TLineSeries;
    Series410: TLineSeries;
    Series411: TLineSeries;
    Series412: TLineSeries;
    Series413: TLineSeries;
    Series414: TLineSeries;
    Series415: TLineSeries;
    Series416: TLineSeries;
    Series417: TLineSeries;
    Series418: TLineSeries;
    Series419: TLineSeries;
    Series420: TLineSeries;
    Series421: TLineSeries;
    Series422: TLineSeries;
    Series423: TLineSeries;
    Series424: TLineSeries;
    Series425: TLineSeries;
    Series426: TLineSeries;
    Series427: TLineSeries;
    Series428: TLineSeries;
    Series429: TLineSeries;
    Series430: TLineSeries;
    Series431: TLineSeries;
    Series432: TLineSeries;
    Series433: TLineSeries;
    Series434: TLineSeries;
    Series435: TLineSeries;
    Series436: TLineSeries;
    Series437: TLineSeries;
    Series438: TLineSeries;
    Series439: TLineSeries;
    Series440: TLineSeries;
    Series441: TLineSeries;
    Series442: TLineSeries;
    Series443: TLineSeries;
    Series444: TLineSeries;
    Series445: TLineSeries;
    Series446: TLineSeries;
    Series447: TLineSeries;
    Series448: TLineSeries;
    Series449: TLineSeries;
    Series450: TLineSeries;
    Series451: TLineSeries;
    Series452: TLineSeries;
    Series453: TLineSeries;
    Series454: TLineSeries;
    Series455: TLineSeries;
    Series456: TLineSeries;
    Series457: TLineSeries;
    Series458: TLineSeries;
    Series459: TLineSeries;
    Series460: TLineSeries;
    Series461: TLineSeries;
    Series462: TLineSeries;
    Series463: TLineSeries;
    Series464: TLineSeries;
    Series465: TLineSeries;
    Series466: TLineSeries;
    Series467: TLineSeries;
    Series468: TLineSeries;
    Series469: TLineSeries;
    Series470: TLineSeries;
    Series471: TLineSeries;
    Series472: TLineSeries;
    Series473: TLineSeries;
    Series474: TLineSeries;
    Series475: TLineSeries;
    Series476: TLineSeries;
    Series477: TLineSeries;
    Series478: TLineSeries;
    Series479: TLineSeries;
    Series480: TLineSeries;
    Series481: TLineSeries;
    Series482: TLineSeries;
    Series483: TLineSeries;
    Series484: TLineSeries;
    Series485: TLineSeries;
    Series486: TLineSeries;
    Series487: TLineSeries;
    Series488: TLineSeries;
    Series489: TLineSeries;
    Series490: TLineSeries;
    Series491: TLineSeries;
    Series492: TLineSeries;
    Series493: TLineSeries;
    Series494: TLineSeries;
    Series495: TLineSeries;
    Series496: TLineSeries;
    Series497: TLineSeries;
    Series498: TLineSeries;
    Series499: TLineSeries;
    Series500: TLineSeries;
    Series501: TLineSeries;
    Series502: TLineSeries;
    Series503: TLineSeries;
    Series504: TLineSeries;
    Series505: TLineSeries;
    Series506: TLineSeries;
    Series507: TLineSeries;
    Series508: TLineSeries;
    Series509: TLineSeries;
    Series510: TLineSeries;
    Series511: TLineSeries;
    Series512: TLineSeries;
    Series513: TLineSeries;
    Series514: TLineSeries;
    Series515: TLineSeries;
    Series516: TLineSeries;
    Series517: TLineSeries;
    Series518: TLineSeries;
    Series519: TLineSeries;
    Series520: TLineSeries;
    Series521: TLineSeries;
    Series522: TLineSeries;
    Series523: TLineSeries;
    Series524: TLineSeries;
    Series525: TLineSeries;
    Series526: TLineSeries;
    Series527: TLineSeries;
    Series528: TLineSeries;
    Series529: TLineSeries;
    Series530: TLineSeries;
    Series531: TLineSeries;
    Series532: TLineSeries;
    Series533: TLineSeries;
    Series534: TLineSeries;
    Series535: TLineSeries;
    Series536: TLineSeries;
    Series537: TLineSeries;
    Series538: TLineSeries;
    Series539: TLineSeries;
    Series540: TLineSeries;
    Series541: TLineSeries;
    Series542: TLineSeries;
    Series543: TLineSeries;
    Series544: TLineSeries;
    Series545: TLineSeries;
    Series546: TLineSeries;
    Series547: TLineSeries;
    Series548: TLineSeries;
    Series549: TLineSeries;
    Series550: TLineSeries;
    Series551: TLineSeries;
    Series552: TLineSeries;
    Series553: TLineSeries;
    Series554: TLineSeries;
    Series555: TLineSeries;
    Series556: TLineSeries;
    Series557: TLineSeries;
    Series558: TLineSeries;
    Series559: TLineSeries;
    Series560: TLineSeries;
    Series561: TLineSeries;
    Series562: TLineSeries;
    Series563: TLineSeries;
    Series564: TLineSeries;
    Series565: TLineSeries;
    Series566: TLineSeries;
    Series567: TLineSeries;
    Series568: TLineSeries;
    Series569: TLineSeries;
    Series570: TLineSeries;
    Series571: TLineSeries;
    Series572: TLineSeries;
    Series573: TLineSeries;
    Series574: TLineSeries;
    Series575: TLineSeries;
    Series576: TLineSeries;
    Series577: TLineSeries;
    Series578: TLineSeries;
    Series579: TLineSeries;
    Series580: TLineSeries;
    Series581: TLineSeries;
    Series582: TLineSeries;
    Series583: TLineSeries;
    Series584: TLineSeries;
    Series585: TLineSeries;
    Series586: TLineSeries;
    Series587: TLineSeries;
    Series588: TLineSeries;
    Series589: TLineSeries;
    Series590: TLineSeries;
    Series591: TLineSeries;
    Series592: TLineSeries;
    Series593: TLineSeries;
    Series594: TLineSeries;
    Series595: TLineSeries;
    Series596: TLineSeries;
    Series597: TLineSeries;
    Series598: TLineSeries;
    Series599: TLineSeries;
    Series600: TLineSeries;
    Series601: TLineSeries;
    Series602: TLineSeries;
    Series603: TLineSeries;
    Series604: TLineSeries;
    Series605: TLineSeries;
    Series606: TLineSeries;
    Series607: TLineSeries;
    Series608: TLineSeries;
    Series609: TLineSeries;
    Series610: TLineSeries;
    Series611: TLineSeries;
    Series612: TLineSeries;
    Series613: TLineSeries;
    Series614: TLineSeries;
    Series615: TLineSeries;
    Series616: TLineSeries;
    Series617: TLineSeries;
    Series618: TLineSeries;
    Series619: TLineSeries;
    Series620: TLineSeries;
    Series621: TLineSeries;
    Series622: TLineSeries;
    Series623: TLineSeries;
    Series624: TLineSeries;
    Series625: TLineSeries;
    Series626: TLineSeries;
    Series627: TLineSeries;
    Series628: TLineSeries;
    Series629: TLineSeries;
    Series630: TLineSeries;
    Series631: TLineSeries;
    Series632: TLineSeries;
    Series633: TLineSeries;
    Series634: TLineSeries;
    Series635: TLineSeries;
    Series636: TLineSeries;
    Series637: TLineSeries;
    Series638: TLineSeries;
    Series639: TLineSeries;
    Series640: TLineSeries;
    Series641: TLineSeries;
    Series642: TLineSeries;
    Series643: TLineSeries;
    Series644: TLineSeries;
    Series645: TLineSeries;
    Series646: TLineSeries;
    Series647: TLineSeries;
    Series648: TLineSeries;
    Series649: TLineSeries;
    Series650: TLineSeries;
    Series651: TLineSeries;
    Series652: TLineSeries;
    Series653: TLineSeries;
    Series654: TLineSeries;
    Series655: TLineSeries;
    Series656: TLineSeries;
    Series657: TLineSeries;
    Series658: TLineSeries;
    Series659: TLineSeries;
    Series660: TLineSeries;
    Series661: TLineSeries;
    Series662: TLineSeries;
    Series663: TLineSeries;
    Series664: TLineSeries;
    Series665: TLineSeries;
    Series666: TLineSeries;
    Series667: TLineSeries;
    Series668: TLineSeries;
    Series669: TLineSeries;
    Series670: TLineSeries;
    Series671: TLineSeries;
    Series672: TLineSeries;
    Series673: TLineSeries;
    Series674: TLineSeries;
    Series675: TLineSeries;
    Series676: TLineSeries;
    Series677: TLineSeries;
    Series678: TLineSeries;
    Series679: TLineSeries;
    Series680: TLineSeries;
    Series681: TLineSeries;
    Series682: TLineSeries;
    Series683: TLineSeries;
    Series684: TLineSeries;
    Series685: TLineSeries;
    Series686: TLineSeries;
    Series687: TLineSeries;
    Series688: TLineSeries;
    Series689: TLineSeries;
    Series690: TLineSeries;
    Series691: TLineSeries;
    Series692: TLineSeries;
    Series693: TLineSeries;
    Series694: TLineSeries;
    Series695: TLineSeries;
    Series696: TLineSeries;
    Series697: TLineSeries;
    Series698: TLineSeries;
    Series699: TLineSeries;
    Series700: TLineSeries;
    Series701: TLineSeries;
    Series702: TLineSeries;
    Series703: TLineSeries;
    Series704: TLineSeries;
    Series705: TLineSeries;
    Series706: TLineSeries;
    Series707: TLineSeries;
    Series708: TLineSeries;
    Series709: TLineSeries;
    Series710: TLineSeries;
    Series711: TLineSeries;
    Series712: TLineSeries;
    Series713: TLineSeries;
    Series714: TLineSeries;
    Series715: TLineSeries;
    Series716: TLineSeries;
    Series717: TLineSeries;
    Series718: TLineSeries;
    Series719: TLineSeries;
    Series720: TLineSeries;
    Series721: TLineSeries;
    Series722: TLineSeries;
    Series723: TLineSeries;
    Series724: TLineSeries;
    Series725: TLineSeries;
    Series726: TLineSeries;
    Series727: TLineSeries;
    Series728: TLineSeries;
    Series729: TLineSeries;
    Series730: TLineSeries;
    Series731: TLineSeries;
    Series732: TLineSeries;
    Series733: TLineSeries;
    Series734: TLineSeries;
    Series735: TLineSeries;
    Series736: TLineSeries;
    Series737: TLineSeries;
    Series738: TLineSeries;
    Series739: TLineSeries;
    Series740: TLineSeries;
    Series741: TLineSeries;
    Series742: TLineSeries;
    Series743: TLineSeries;
    Series744: TLineSeries;
    Series745: TLineSeries;
    Series746: TLineSeries;
    Series747: TLineSeries;
    Series748: TLineSeries;
    Series749: TLineSeries;
    Series750: TLineSeries;
    Series751: TLineSeries;
    Series752: TLineSeries;
    Series753: TLineSeries;
    Series754: TLineSeries;
    Series755: TLineSeries;
    Series756: TLineSeries;
    Series757: TLineSeries;
    Series758: TLineSeries;
    Series759: TLineSeries;
    Series760: TLineSeries;
    Series761: TLineSeries;
    Series762: TLineSeries;
    Series763: TLineSeries;
    Series764: TLineSeries;
    Series765: TLineSeries;
    Series766: TLineSeries;
    Series767: TLineSeries;
    Series768: TLineSeries;
    Series769: TLineSeries;
    Series770: TLineSeries;
    Series771: TLineSeries;
    Series772: TLineSeries;
    Series773: TLineSeries;
    Series774: TLineSeries;
    Series775: TLineSeries;
    Series776: TLineSeries;
    Series777: TLineSeries;
    Series778: TLineSeries;
    Series779: TLineSeries;
    Series780: TLineSeries;
    Series781: TLineSeries;
    Series782: TLineSeries;
    Series783: TLineSeries;
    Series784: TLineSeries;
    Series785: TLineSeries;
    Series786: TLineSeries;
    Series787: TLineSeries;
    Series788: TLineSeries;
    Series789: TLineSeries;
    Series790: TLineSeries;
    Series791: TLineSeries;
    Series792: TLineSeries;
    Series793: TLineSeries;
    Series794: TLineSeries;
    Series795: TLineSeries;
    Series796: TLineSeries;
    Series797: TLineSeries;
    Series798: TLineSeries;
    Series799: TLineSeries;
    Series800: TLineSeries;
    Series801: TLineSeries;
    Series802: TLineSeries;
    Series803: TLineSeries;
    Series804: TLineSeries;
    Series805: TLineSeries;
    Series806: TLineSeries;
    Series807: TLineSeries;
    Series808: TLineSeries;
    Series809: TLineSeries;
    Series810: TLineSeries;
    Series811: TLineSeries;
    Series812: TLineSeries;
    Series813: TLineSeries;
    Series814: TLineSeries;
    Series815: TLineSeries;
    Series816: TLineSeries;
    Series817: TLineSeries;
    Series818: TLineSeries;
    Series819: TLineSeries;
    Series820: TLineSeries;
    Series821: TLineSeries;
    Series822: TLineSeries;
    Series823: TLineSeries;
    Series824: TLineSeries;
    Series825: TLineSeries;
    Series826: TLineSeries;
    Series827: TLineSeries;
    Series828: TLineSeries;
    Series829: TLineSeries;
    Series830: TLineSeries;
    Series831: TLineSeries;
    Series832: TLineSeries;
    Series833: TLineSeries;
    Series834: TLineSeries;
    Series835: TLineSeries;
    Series836: TLineSeries;
    Series837: TLineSeries;
    Series838: TLineSeries;
    Series839: TLineSeries;
    Series840: TLineSeries;
    Series841: TLineSeries;
    Series842: TLineSeries;
    Series843: TLineSeries;
    Series844: TLineSeries;
    Series845: TLineSeries;
    Series846: TLineSeries;
    Series847: TLineSeries;
    Series848: TLineSeries;
    Series849: TLineSeries;
    Series850: TLineSeries;
    Series851: TLineSeries;
    Series852: TLineSeries;
    Series853: TLineSeries;
    Series854: TLineSeries;
    Series855: TLineSeries;
    Series856: TLineSeries;
    Series857: TLineSeries;
    Series858: TLineSeries;
    Series859: TLineSeries;
    Series860: TLineSeries;
    Series861: TLineSeries;
    Series862: TLineSeries;
    Series863: TLineSeries;
    Series864: TLineSeries;
    Series865: TLineSeries;
    Series866: TLineSeries;
    Series867: TLineSeries;
    Series868: TLineSeries;
    Series869: TLineSeries;
    Series870: TLineSeries;
    Series871: TLineSeries;
    Series872: TLineSeries;
    Series873: TLineSeries;
    Series874: TLineSeries;
    Series875: TLineSeries;
    Series876: TLineSeries;
    Series877: TLineSeries;
    Series878: TLineSeries;
    Series879: TLineSeries;
    Series880: TLineSeries;
    Series881: TLineSeries;
    Series882: TLineSeries;
    Series883: TLineSeries;
    Series884: TLineSeries;
    Series885: TLineSeries;
    Series886: TLineSeries;
    Series887: TLineSeries;
    Series888: TLineSeries;
    Series889: TLineSeries;
    Series890: TLineSeries;
    Series891: TLineSeries;
    Series892: TLineSeries;
    Series893: TLineSeries;
    Series894: TLineSeries;
    Series895: TLineSeries;
    Series896: TLineSeries;
    Series897: TLineSeries;
    Series898: TLineSeries;
    Series899: TLineSeries;
    Series900: TLineSeries;
    Series901: TLineSeries;
    Series902: TLineSeries;
    Series903: TLineSeries;
    Series904: TLineSeries;
    Series905: TLineSeries;
    Series906: TLineSeries;
    Series907: TLineSeries;
    Series908: TLineSeries;
    Series909: TLineSeries;
    Series910: TLineSeries;
    Series911: TLineSeries;
    Series912: TLineSeries;
    Series913: TLineSeries;
    Series914: TLineSeries;
    Series915: TLineSeries;
    Series916: TLineSeries;
    Series917: TLineSeries;
    Series918: TLineSeries;
    Series919: TLineSeries;
    Series920: TLineSeries;
    Series921: TLineSeries;
    Series922: TLineSeries;
    Series923: TLineSeries;
    Series924: TLineSeries;
    Series925: TLineSeries;
    Series926: TLineSeries;
    Series927: TLineSeries;
    Series928: TLineSeries;
    Series929: TLineSeries;
    Series930: TLineSeries;
    Series931: TLineSeries;
    Series932: TLineSeries;
    Series933: TLineSeries;
    Series934: TLineSeries;
    Series935: TLineSeries;
    Series936: TLineSeries;
    Series937: TLineSeries;
    Series938: TLineSeries;
    Series939: TLineSeries;
    Series940: TLineSeries;
    Series941: TLineSeries;
    Series942: TLineSeries;
    Series943: TLineSeries;
    Series944: TLineSeries;
    Series945: TLineSeries;
    Series946: TLineSeries;
    Series947: TLineSeries;
    Series948: TLineSeries;
    Series949: TLineSeries;
    Series950: TLineSeries;
    Series951: TLineSeries;
    Series952: TLineSeries;
    Series953: TLineSeries;
    Series954: TLineSeries;
    Series955: TLineSeries;
    Series956: TLineSeries;
    Series957: TLineSeries;
    Series958: TLineSeries;
    Series959: TLineSeries;
    Series960: TLineSeries;
    Series961: TLineSeries;
    Series962: TLineSeries;
    Series963: TLineSeries;
    Series964: TLineSeries;
    Series965: TLineSeries;
    Series966: TLineSeries;
    Series967: TLineSeries;
    Series968: TLineSeries;
    Series969: TLineSeries;
    Series970: TLineSeries;
    Series971: TLineSeries;
    Series972: TLineSeries;
    Series973: TLineSeries;
    Series974: TLineSeries;
    Series975: TLineSeries;
    Series976: TLineSeries;
    Series977: TLineSeries;
    Series978: TLineSeries;
    Series979: TLineSeries;
    Series980: TLineSeries;
    Series981: TLineSeries;
    Series982: TLineSeries;
    Series983: TLineSeries;
    Series984: TLineSeries;
    Series985: TLineSeries;
    Series986: TLineSeries;
    Series987: TLineSeries;
    Series988: TLineSeries;
    Series989: TLineSeries;
    Series990: TLineSeries;
    Series991: TLineSeries;
    Series992: TLineSeries;
    Series993: TLineSeries;
    Series994: TLineSeries;
    Series995: TLineSeries;
    Series996: TLineSeries;
    Series997: TLineSeries;
    Series998: TLineSeries;
    Series999: TLineSeries;
    Series1000: TLineSeries;
    Series1001: TLineSeries;
    Series1002: TLineSeries;
    Series1003: TLineSeries;
    Series1004: TLineSeries;
    Series1005: TLineSeries;
    Series1006: TLineSeries;
    Series1007: TLineSeries;
    Series1008: TLineSeries;
    Series1009: TLineSeries;
    Series1010: TLineSeries;
    Series1011: TLineSeries;
    Series1012: TLineSeries;
    Series1013: TLineSeries;
    Series1014: TLineSeries;
    Series1015: TLineSeries;
    Series1016: TLineSeries;
    Series1017: TLineSeries;
    Series1018: TLineSeries;
    Series1019: TLineSeries;
    Series1020: TLineSeries;
    Series1021: TLineSeries;
    Series1022: TLineSeries;
    Series1023: TLineSeries;
    Series1024: TLineSeries;
    Series1025: TLineSeries;
    Series1026: TLineSeries;
    Series1027: TLineSeries;
    Series1028: TLineSeries;
    Series1029: TLineSeries;
    Series1030: TLineSeries;
    Series1031: TLineSeries;
    Series1032: TLineSeries;
    Series1033: TLineSeries;
    Series1034: TLineSeries;
    Series1035: TLineSeries;
    Series1036: TLineSeries;
    Series1037: TLineSeries;
    Series1038: TLineSeries;
    Series1039: TLineSeries;
    Series1040: TLineSeries;
    Series1041: TLineSeries;
    Series1042: TLineSeries;
    Series1043: TLineSeries;
    Series1044: TLineSeries;
    Series1045: TLineSeries;
    Series1046: TLineSeries;
    Series1047: TLineSeries;
    Series1048: TLineSeries;
    Series1049: TLineSeries;
    Series1050: TLineSeries;
    Series1051: TLineSeries;
    Series1052: TLineSeries;
    Series1053: TLineSeries;
    Series1054: TLineSeries;
    Series1055: TLineSeries;
    Series1056: TLineSeries;
    Series1057: TLineSeries;
    Series1058: TLineSeries;
    Series1059: TLineSeries;
    Series1060: TLineSeries;
    Series1061: TLineSeries;
    Series1062: TLineSeries;
    Series1063: TLineSeries;
    Series1064: TLineSeries;
    Series1065: TLineSeries;
    Series1066: TLineSeries;
    Series1067: TLineSeries;
    Series1068: TLineSeries;
    Series1069: TLineSeries;
    Series1070: TLineSeries;
    Series1071: TLineSeries;
    Series1072: TLineSeries;
    Series1073: TLineSeries;
    Series1074: TLineSeries;
    Series1075: TLineSeries;
    Series1076: TLineSeries;
    Series1077: TLineSeries;
    Series1078: TLineSeries;
    Series1079: TLineSeries;
    Series1080: TLineSeries;
    Series1081: TLineSeries;
    Series1082: TLineSeries;
    Series1083: TLineSeries;
    Series1084: TLineSeries;
    Series1085: TLineSeries;
    Series1086: TLineSeries;
    Series1087: TLineSeries;
    Series1088: TLineSeries;
    Series1089: TLineSeries;
    Series1090: TLineSeries;
    Series1091: TLineSeries;
    Series1092: TLineSeries;
    Series1093: TLineSeries;
    Series1094: TLineSeries;
    Series1095: TLineSeries;
    Series1096: TLineSeries;
    Series1097: TLineSeries;
    Series1098: TLineSeries;
    Series1099: TLineSeries;
    Series1100: TLineSeries;
    Series1101: TLineSeries;
    Series1102: TLineSeries;
    Series1103: TLineSeries;
    Series1104: TLineSeries;
    Series1105: TLineSeries;
    Series1106: TLineSeries;
    Series1107: TLineSeries;
    Series1108: TLineSeries;
    Series1109: TLineSeries;
    Series1110: TLineSeries;
    Series1111: TLineSeries;
    Series1112: TLineSeries;
    Series1113: TLineSeries;
    Series1114: TLineSeries;
    Series1115: TLineSeries;
    Series1116: TLineSeries;
    Series1117: TLineSeries;
    Series1118: TLineSeries;
    Series1119: TLineSeries;
    Series1120: TLineSeries;
    Series1121: TLineSeries;
    Series1122: TLineSeries;
    Series1123: TLineSeries;
    Series1124: TLineSeries;
    Series1125: TLineSeries;
    Series1126: TLineSeries;
    Series1127: TLineSeries;
    Series1128: TLineSeries;
    Series1129: TLineSeries;
    Series1130: TLineSeries;
    Series1131: TLineSeries;
    Series1132: TLineSeries;
    Series1133: TLineSeries;
    Series1134: TLineSeries;
    Series1135: TLineSeries;
    Series1136: TLineSeries;
    Series1137: TLineSeries;
    Series1138: TLineSeries;
    Series1139: TLineSeries;
    Series1140: TLineSeries;
    Series1141: TLineSeries;
    Series1142: TLineSeries;
    Series1143: TLineSeries;
    Series1144: TLineSeries;
    Series1145: TLineSeries;
    Series1146: TLineSeries;
    Series1147: TLineSeries;
    Series1148: TLineSeries;
    Series1149: TLineSeries;
    Series1150: TLineSeries;
    Series1151: TLineSeries;
    Series1152: TLineSeries;
    Series1153: TLineSeries;
    Series1154: TLineSeries;
    Series1155: TLineSeries;
    Series1156: TLineSeries;
    Series1157: TLineSeries;
    Series1158: TLineSeries;
    Series1159: TLineSeries;
    Series1160: TLineSeries;
    Series1161: TLineSeries;
    Series1162: TLineSeries;
    Series1163: TLineSeries;
    Series1164: TLineSeries;
    Series1165: TLineSeries;
    Series1166: TLineSeries;
    Series1167: TLineSeries;
    Series1168: TLineSeries;
    Series1169: TLineSeries;
    Series1170: TLineSeries;
    Series1171: TLineSeries;
    Series1172: TLineSeries;
    Series1173: TLineSeries;
    Series1174: TLineSeries;
    Series1175: TLineSeries;
    Series1176: TLineSeries;
    Series1177: TLineSeries;
    Series1178: TLineSeries;
    Series1179: TLineSeries;
    Series1180: TLineSeries;
    Series1181: TLineSeries;
    Series1182: TLineSeries;
    Series1183: TLineSeries;
    Series1184: TLineSeries;
    Series1185: TLineSeries;
    Series1186: TLineSeries;
    Series1187: TLineSeries;
    Series1188: TLineSeries;
    Series1189: TLineSeries;
    Series1190: TLineSeries;
    Series1191: TLineSeries;
    Series1192: TLineSeries;
    Series1193: TLineSeries;
    Series1194: TLineSeries;
    Series1195: TLineSeries;
    Series1196: TLineSeries;
    Series1197: TLineSeries;
    Series1198: TLineSeries;
    Series1199: TLineSeries;
    Series1200: TLineSeries;
    Series1201: TLineSeries;
    Series1202: TLineSeries;
    Series1203: TLineSeries;
    Series1204: TLineSeries;
    Series1205: TLineSeries;
    Series1206: TLineSeries;
    Series1207: TLineSeries;
    Series1208: TLineSeries;
    Series1209: TLineSeries;
    Series1210: TLineSeries;
    Series1211: TLineSeries;
    Series1212: TLineSeries;
    Series1213: TLineSeries;
    Series1214: TLineSeries;
    Series1215: TLineSeries;
    Series1216: TLineSeries;
    Series1217: TLineSeries;
    Series1218: TLineSeries;
    Series1219: TLineSeries;
    Series1220: TLineSeries;
    Series1221: TLineSeries;
    Series1222: TLineSeries;
    Series1223: TLineSeries;
    Series1224: TLineSeries;
    Series1225: TLineSeries;
    Series1226: TLineSeries;
    Series1227: TLineSeries;
    Series1228: TLineSeries;
    Series1229: TLineSeries;
    Series1230: TLineSeries;
    Series1231: TLineSeries;
    Series1232: TLineSeries;
    Series1233: TLineSeries;
    Series1234: TLineSeries;
    Series1235: TLineSeries;
    Series1236: TLineSeries;
    Series1237: TLineSeries;
    Series1238: TLineSeries;
    Series1239: TLineSeries;
    Series1240: TLineSeries;
    Series1241: TLineSeries;
    Series1242: TLineSeries;
    Series1243: TLineSeries;
    Series1244: TLineSeries;
    Series1245: TLineSeries;
    Series1246: TLineSeries;
    Series1247: TLineSeries;
    Series1248: TLineSeries;
    Series1249: TLineSeries;
    Series1250: TLineSeries;
    Series1251: TLineSeries;
    Series1252: TLineSeries;
    Series1253: TLineSeries;
    Series1254: TLineSeries;
    Series1255: TLineSeries;
    Series1256: TLineSeries;
    Series1257: TLineSeries;
    Series1258: TLineSeries;
    Series1259: TLineSeries;
    Series1260: TLineSeries;
    Series1261: TLineSeries;
    Series1262: TLineSeries;
    Series1263: TLineSeries;
    Series1264: TLineSeries;
    Series1265: TLineSeries;
    Series1266: TLineSeries;
    Series1267: TLineSeries;
    Series1268: TLineSeries;
    Series1269: TLineSeries;
    Series1270: TLineSeries;
    Series1271: TLineSeries;
    Series1272: TLineSeries;
    Series1273: TLineSeries;
    Series1274: TLineSeries;
    Series1275: TLineSeries;
    Series1276: TLineSeries;
    Series1277: TLineSeries;
    Series1278: TLineSeries;
    Series1279: TLineSeries;
    Series1280: TLineSeries;
    Series1281: TLineSeries;
    Series1282: TLineSeries;
    Series1283: TLineSeries;
    Series1284: TLineSeries;
    Series1285: TLineSeries;
    Series1286: TLineSeries;
    Series1287: TLineSeries;
    Series1288: TLineSeries;
    Series1289: TLineSeries;
    Series1290: TLineSeries;
    Series1291: TLineSeries;
    Series1292: TLineSeries;
    Series1293: TLineSeries;
    Series1294: TLineSeries;
    Series1295: TLineSeries;
    Series1296: TLineSeries;
    Series1297: TLineSeries;
    Series1298: TLineSeries;
    Series1299: TLineSeries;
    Series1300: TLineSeries;
    Series1301: TLineSeries;
    Series1302: TLineSeries;
    Series1303: TLineSeries;
    Series1304: TLineSeries;
    GroupBox5: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit13: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Edit14: TEdit;
    Button6: TButton;
    moving_average_timer: TTimer;
    Label29: TLabel;
    Series1305: TLineSeries;
    Series1306: TLineSeries;
    Series1307: TLineSeries;
    Series1308: TLineSeries;
    Series1309: TLineSeries;
    Series1310: TLineSeries;
    Series1311: TLineSeries;
    Series1312: TLineSeries;
    Series1313: TLineSeries;
    Series1314: TLineSeries;
    Series1315: TLineSeries;
    Series1316: TLineSeries;
    Series1317: TLineSeries;
    Series1318: TLineSeries;
    Series1319: TLineSeries;
    Series1320: TLineSeries;
    Series1321: TLineSeries;
    Series1322: TLineSeries;
    Series1323: TLineSeries;
    Series1324: TLineSeries;
    Series1325: TLineSeries;
    Series1326: TLineSeries;
    Series1327: TLineSeries;
    Series1328: TLineSeries;
    Series1329: TLineSeries;
    Series1330: TLineSeries;
    Series1331: TLineSeries;
    Series1332: TLineSeries;
    Series1333: TLineSeries;
    Series1334: TLineSeries;
    Series1335: TLineSeries;
    Series1336: TLineSeries;
    Series1337: TLineSeries;
    Series1338: TLineSeries;
    Series1339: TLineSeries;
    Series1340: TLineSeries;
    Series1341: TLineSeries;
    Series1342: TLineSeries;
    Series1343: TLineSeries;
    Series1344: TLineSeries;
    Series1345: TLineSeries;
    Series1346: TLineSeries;
    Series1347: TLineSeries;
    Series1348: TLineSeries;
    Series1349: TLineSeries;
    Series1350: TLineSeries;
    Series1351: TLineSeries;
    Series1352: TLineSeries;
    Series1353: TLineSeries;
    Series1354: TLineSeries;
    Series1355: TLineSeries;
    Series1356: TLineSeries;
    Series1357: TLineSeries;
    Series1358: TLineSeries;
    Series1359: TLineSeries;
    Series1360: TLineSeries;
    Series1361: TLineSeries;
    Series1362: TLineSeries;
    Series1363: TLineSeries;
    Series1364: TLineSeries;
    Series1365: TLineSeries;
    Series1366: TLineSeries;
    Series1367: TLineSeries;
    Series1368: TLineSeries;
    Series1369: TLineSeries;
    Series1370: TLineSeries;
    Series1371: TLineSeries;
    Series1372: TLineSeries;
    Series1373: TLineSeries;
    Series1374: TLineSeries;
    Series1375: TLineSeries;
    CheckBox4: TCheckBox;
    Button13: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Edit16: TEdit;
    Label30: TLabel;
    Save_memo: TMemo;
    SaveDialog1: TSaveDialog;
    Button21: TButton;
    OpenDialog1: TOpenDialog;
    buffer_image: TImage;
    Load_timer: TTimer;
    PopupMenu1: TPopupMenu;
    MultiplyBy21: TMenuItem;
    x31: TMenuItem;
    x41: TMenuItem;
    Button20: TButton;
    Button19: TButton;
    Button11: TButton;
    Label28: TLabel;
    CheckBox3: TCheckBox;
    Edit15: TEdit;
    Button14: TButton;
    ProgressBar2: TProgressBar;
    CheckBox5: TCheckBox;
    Button22: TButton;
    OpenPictureDialog2: TOpenPictureDialog;
    mech_image: TImage;
    Button23: TButton;
    Memo1: TMemo;
    Label31: TLabel;
    click_point: TButton;
    Label32: TLabel;
    Label33: TLabel;
    Label1: TLabel;
    delay_iso_button: TButton;
    Label2: TLabel;
    apdx_iso_button: TButton;
    cv_iso_bottun: TButton;
    apdx_edit: TEdit;
    Label15: TLabel;
    Label34: TLabel;
    Edit1: TEdit;
    plot_raw: TButton;
    plot_column: TButton;
    Button1: TButton;
    Button2: TButton;
    Button9: TButton;
    MainMenu1: TMainMenu;
    Process1: TMenuItem;
    EasySettingWizard1: TMenuItem;
    ManualAdvancedProcessing1: TMenuItem;
    ools1: TMenuItem;
    FrameGrabber1: TMenuItem;
    ImageCropper1: TMenuItem;
    ColorIntensifier1: TMenuItem;
    Reports1: TMenuItem;
    SaveRawData1: TMenuItem;
    ExportImages1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    Panel1: TPanel;
    Image4: TImage;
    Button10: TButton;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    ShowActivationResultsandCharts1: TMenuItem;
    SaveDialog2: TSaveDialog;
    Button24: TButton;
    Button25: TButton;
    Label38: TLabel;
    LoadProcessedData1: TMenuItem;
    SaveProcessedData1: TMenuItem;
    cv_iso_button_new: TButton;
    Series1376: TPointSeries;
    Button26: TButton;
    apd80_cv_check_box: TCheckBox;
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure animate_timerTimer(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Process_timerTimer(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure image_animate_timerTimer(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure GroupBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure moving_average_timerTimer(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Load_timerTimer(Sender: TObject);
    procedure MultiplyBy21Click(Sender: TObject);
    procedure x31Click(Sender: TObject);
    procedure x41Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure click_pointClick(Sender: TObject);
    procedure apdx_iso_buttonClick(Sender: TObject);
    procedure cv_iso_bottunClick(Sender: TObject);
    procedure plot_rawClick(Sender: TObject);
    procedure plot_columnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ManualAdvancedProcessing1Click(Sender: TObject);
    procedure EasySettingWizard1Click(Sender: TObject);
    procedure ShowActivationResultsandCharts1Click(Sender: TObject);
    procedure ExportImages1Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure SaveProcessedData1Click(Sender: TObject);
    procedure LoadProcessedData1Click(Sender: TObject);
    procedure cv_iso_button_newClick(Sender: TObject);
    procedure Button26Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   chart_index : integer;
   chart_i , chart_j : integer;
   ecg_array : ar_2d_real;
   ecg_filtered : ar_2d_real;
   data_filtered : real;
   i,j,k : integer;
   data_counter_end , data_counter_start , data_counter , max_data_count : integer;

   ecg_test_ar : ar_1d;
   y_offset , x_offset : integer;
   data : real;
   r1,r2,r3 : byte;
   cr : int64;
   amp_scale , amplitude : real;

   x11, y11, binning_width , dis , x , y , m , n : integer;
    mark_color : int64;
    xc , yc : integer;

    x_point , y_point : ar_1d_small;
    file_path , s : string;
    frame_index : int64;
     intensity : real;
     cv : int64;
     r,g,b : byte;
     r_sum , g_sum , b_sum : real;
     r_wei , g_wei , b_wei : real;
     x_process , y_process : integer;
     block_no : integer;
     i2,j2 : integer;
     global_max , global_min : real;
     color_scale : real;

     ecg_x , ecg_y , ecg_index: integer;
     click_counter : integer;
     pixel_count : integer;

     animate_frame_start , animate_frame_end , animate_frame_counter : integer;
     process_window_dimension , process_window_dimension_plus , pixel_width: byte;

     ecg_data_start, ecg_data_end, ecg_data_counter : Integer;
     sum : real;
     c1 : integer;

     fir_show , mechanic_flag: boolean;

     binning_width_2 : integer;

     x_scale , y_scale : real;
     save_setting_file_path , save_setting_mech_path : string;
     x11_save , y11_save : integer;

     max_ecg_count : integer;


     global_max_fir , global_min_fir , color_scale_fir , amplitude_fir , fir_scale : real;


     ecg_max_array , ecg_min_array , ecg_max_time , ecg_min_time , ecg_amp_array , conduction_delay_array , conduction_velocity_amp_array : ar_1d_small_real;
     ecg_apd80_array , ecg_apd80_time : ar_1d_small_real;
     conduction_velocity_u_x_array , conduction_velocity_u_y_array : ar_1d_small_real;


     first_max_time , last_max_time , first_max : real;
     first_max_index , last_max_index : integer;

     conduction_delay_max , conduction_delay_min , scale: real;

     apd90_max , apd90_min , apd90_cross_line: real;
     left_cross , right_cross : real;
     apd90_array : ar_1d_small_real;

     apdx : real;
     Gx, Gy , G_amp , ux , uy , u_amp : real;
     d : real;

     t_i_plus_j , t_i_minus_j ,  t_i_j_plus , t_i_j_minus : real;
     conduction_velocity_max , conduction_velocity_min : real;

     series_counter : integer;

     sum_cv : double;

     moving_average_window_width : integer;

     save_file , open_file : text;
     save_string , open_string : string;

     t_max_index , t_apd80_index : word;
     data1 , data2 , apd80_line : real;
      t_apd80 : real;

     d1 , d2 , d3 : real;
     d4 , d5 , d6 : real;
     d7 , d8 , d9 : real;

     t_apd80_current , t_apd80_point2 : real;

     dif_x , dif_y , dif_amplitude , dif_angle : real;
     angle_coefficient : real;

     dif_amplitude_max , dif_amplitude_min : real;
     cv_amplitude , cv_angle : real;
     data_scale , cv_max , cv_min : real;
     colorvalue : int64;
     
implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm1.Image1Click(Sender: TObject);
begin



x11 := xc;
y11 := yc;
x11_save := x11;
y11_save := y11;

zoom_form.label3.Caption := inttostr(dis);
zoom_form.Label4.Caption := inttostr(x11);
zoom_form.Label5.Caption := inttostr(y11);
zoom_form.Label6.Caption := inttostr(process_window_dimension_plus);

iso_line_form.label1.Caption := 'Point distance (mm): ' + inttostr(dis);
iso_line_form.Label2.Caption := 'Window Dimension : ' + inttostr(process_window_dimension_plus);


memo1.Lines.Clear;
memo1.Lines.Add(inttostr(x11_save));
memo1.Lines.Add(inttostr(y11_save));
memo1.Lines.SaveToFile('c:/optical/last_points.oms');





if dis-binning_width > 0 then
begin
if radiobutton1.Checked then mark_color := clblue;
if radiobutton2.Checked then mark_color := clgreen;
if radiobutton3.Checked then mark_color := clyellow;
if radiobutton4.Checked then mark_color := clwhite;


for j := 0 to process_window_dimension do
begin
  for i := 0 to process_window_dimension do
  begin
  x := x11 + i * dis;
  y := y11 + j * dis;

    for m := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x+m , y] := mark_color;
       zoom_form.image1.canvas.pixels[x+m , y] := mark_color;
    end;

    for n := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x , y+n] := mark_color;
       zoom_form.image1.canvas.pixels[x , y+n] := mark_color;
    end;

  x_point[j*process_window_dimension_plus + i] := x;
  y_point[j*process_window_dimension_plus + i] := y;


  end;
end;

 for chart_index := 0 to 1099 do
 begin
      randomize();
      r1 := random(255);
      r2 := random(255);
      r3 := random(255);
      cr := (r1 shl 16) + (r2 shl 8) + r3;
      chart1.Series[chart_index].SeriesColor := cr;

 end;


showmessage('A '+edit12.Text+'x'+edit12.Text+' Mask Points has selected');
button7.Enabled := true;

end //if dis-binning_width > 0 then
else
begin
 showmessage('Distance minus window width must be greater than zero');

end;


end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
xc := x;
yc:= y;
label15.Caption := inttostr(trunc(xc/2))+','+ inttostr(trunc(yc/2));

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

process_window_dimension_plus := strtoint(edit12.Text);
process_window_dimension := strtoint(edit12.Text) - 1;

binning_width := strtoint(edit4.Text);
dis := strtoint(edit3.text);

//image2.Width := 7 * process_window_dimension_plus;
//image2.Height := 7 * process_window_dimension_plus;
image3.Width := process_window_dimension;
image3.Height := process_window_dimension;
frame_index := 5;
block_no := 0;

dt := 1000 / strtofloat(edit16.Text);

if process_window_dimension_plus < 33 then
begin
if openpicturedialog1.Execute then
begin

file_path := openpicturedialog1.FileName;
save_setting_file_path := file_path;

i := 1;
s:='';
repeat
 s := s + file_path[i];
 i := i + 1;
until (file_path[i] = '.');

file_path := '';
i := 1;
j := length(s)-2;
repeat
file_path := file_path + s[i];
i := i + 1;
until (i > j);
label14.Caption := file_path;

if radiobutton1.Checked then mark_color := clblue;
if radiobutton2.Checked then mark_color := clgreen;
if radiobutton3.Checked then mark_color := clyellow;
if radiobutton4.Checked then mark_color := clwhite;



for i := 0 to  buffer_image.Width do
 for j := 0 to buffer_image.Height do
   image1.Canvas.Pixels[i,j] := 0;


for i := 0 to  224 do
 for j := 0 to 224 do
   image2.Canvas.Pixels[i,j] := rgb(0,255,255);


Load_timer.Enabled := true;

end;
end
else
begin
  showmessage('Process Window Max Dimension is  32x32');
end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
image1.Picture.LoadFromFile(openpicturedialog1.FileName);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
{image1.Width := image1.Width *2;
image1.Height := image1.Height *2;
groupbox1.Width := image1.Width + 100;
groupbox1.Height := image1.Height + 100;
chart1.Left := groupbox1.Left + groupbox1.Width;  }
zoom_form.show;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
amplitude := global_max;


//clear all
chart_index := 0;
repeat
  chart1.Series[chart_index].Clear;
  chart_index := chart_index + 1;
until (chart_index > 1240);
chart1.Series[1243].Clear;





// table


   chart_i := 0;

   repeat
      chart_index := chart_i + 1100;
      chart1.Series[chart_index].AddXY(chart_i*max_data_count, 0);
      chart1.Series[chart_index].AddXY(chart_i*max_data_count, (1.1*amplitude*process_window_dimension_plus)+amplitude);
      chart1.Series[chart_index].SeriesColor := clblack;
   chart_i := chart_i + 1;

   until (chart_i > process_window_dimension);


   chart_i := 0;

   repeat
      chart_index := chart_i + 1140;
      chart1.Series[chart_index].AddXY(0 , trunc(1.1 * chart_i * amplitude) + amplitude);
      chart1.Series[chart_index].AddXY(max_data_count*process_window_dimension_plus+max_data_count , trunc( 1.1 * chart_i * amplitude) + amplitude  );
      chart1.Series[chart_index].SeriesColor := clblack;
   chart_i := chart_i + 1;

   until (chart_i > process_window_dimension);



animate_frame_start := frame_index - max_data_count;
data_counter := animate_frame_start;


zoom_form.show;
zoom_form.Left := 0;
zoom_form.Top := 0;
{
zoom_form.Image1.Width := 672;
zoom_form.Image1.Height := 480;

zoom_form.Width := 680;
zoom_form.Height := 530;
                          }
zoom_form.Image1.Stretch := true;
binning_width_2 := 1;


x_scale := 1135 / (process_window_dimension * dis);
y_scale := 815 /  (process_window_dimension_plus * dis);



fir_show := checkbox4.Checked;
mechanic_flag := checkbox5.checked;


animate_frame_start := frame_index - max_data_count;
animate_frame_end := frame_index;
animate_frame_counter := animate_frame_start;
pixel_width := trunc(image2.Width / process_window_dimension_plus);
image3.Width := process_window_dimension_plus;
image3.Height := process_window_dimension_plus;

animate_timer.Interval := strtoint(edit7.Text);
animate_timer.Enabled := true;

end;

procedure TForm1.animate_timerTimer(Sender: TObject);
begin
//show array
if data_counter < 1 then data_counter := 1;
s := file_path + 'f'+inttostr(data_counter)+'.bmp';
label14.Caption := s;
image1.Picture.LoadFromFile(s);
image1.Refresh;

chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      y_offset := trunc(1.1*(process_window_dimension_plus - chart_j)*amplitude);

      x_offset := (chart_i*max_data_count) + data_counter - data_counter_start;

      if fir_show then data := (ecg_filtered[chart_index,data_counter] * fir_scale) + y_offset
      else  data := ecg_array[chart_index,data_counter] + y_offset;

      chart1.Series[chart_index].AddXY( x_offset , data  );

      x_process := x_point[chart_index];

      y_process := y_point[chart_index];


   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension);

 chart1.Series[chart_index].SeriesColor := mark_color;

 data_counter := data_counter+1;

 label9.Caption := inttostr(data_counter);



if mechanic_flag then
begin
zoom_form.Image1.Picture := mech_image.Picture;
 for i := 0 to 224 do
 begin
   for j := 0 to 160 do
   begin
     cv := image1.Canvas.Pixels[i,j];
     g := getgvalue(cv);
     r := getrvalue(cv);
     if g > 5 then zoom_form.Image1.Canvas.Pixels[i,j] := cv;
     if r > 5 then zoom_form.Image1.Canvas.Pixels[i,j] := cv;

   end;
 end;
end
else
begin
 zoom_form.Image1.Picture := image1.Picture;
end;

for j := 0 to process_window_dimension do
begin
  for i := 0 to process_window_dimension do
  begin
  x := x11 + i * dis;
  y := y11 + j * dis;

    for m := -binning_width_2 to binning_width_2 do
       zoom_form.image1.canvas.pixels[x+m , y] := mark_color;


    for n := -binning_width_2 to binning_width_2 do
       zoom_form.image1.canvas.pixels[x , y+n] := mark_color;

  x_point[j*process_window_dimension_plus + i] := x;
  y_point[j*process_window_dimension_plus + i] := y;


  end;
end;

zoom_form.Image1.Refresh;


if data_counter > ((block_no * max_data_count) - binning_width) then
begin
animate_timer.Enabled := false;
end;


end;

procedure TForm1.Button7Click(Sender: TObject);
begin




progressbar1.Position := 0;
wizard_form.progressbar1.Position := 0;

binning_width := strtoint(edit15.Text);

max_data_count := strtoint(edit6.Text) - binning_width;

progressbar1.Max := max_data_count - binning_width;
wizard_form.ProgressBar1.Max := progressbar1.Max;

r_wei := strtofloat(edit8.Text);
g_wei := strtofloat(edit10.Text);
b_wei := strtofloat(edit9.Text);



process_timer.Interval := strtoint(edit5.Text);
process_timer.Enabled := true;

frame_index := 2;

block_no := block_no + 1;

end;

procedure TForm1.Process_timerTimer(Sender: TObject);
begin


s := file_path + 'f'+inttostr(frame_index)+'.bmp';
label14.Caption := s;
image1.Picture.LoadFromFile(s);
wizard_form.Image1.Picture := image1.Picture;

for j := 0 to process_window_dimension do
begin
  for i := 0 to process_window_dimension do
  begin
   x_process := x_point[j*process_window_dimension_plus + i];
   y_process := y_point[j*process_window_dimension_plus + i];
   r_sum := 0;
   g_sum := 0;
   b_sum := 0;
   
   for m := -binning_width to binning_width do
   begin
   for n := -binning_width to binning_width do
   begin
       cv := image1.Canvas.Pixels[x_process+n,y_process+m];
       r := getrvalue(cv);
       g := getgvalue(cv);
       b := getbvalue(cv);
       r_sum := r_sum + r;
       g_sum := g_sum + g;
       b_sum := b_sum + b;
    end;
   end;

   
   for m := -1 to 1 do wizard_form.Image1.Canvas.Pixels[x_process,y_process+m] := mark_color;
   for n := -1 to 1 do wizard_form.Image1.Canvas.Pixels[x_process+n,y_process] := mark_color;


   r_sum := r_sum / sqr(2*binning_width+1);
   g_sum := g_sum / sqr(2*binning_width+1);
   b_sum := b_sum / sqr(2*binning_width+1);
   intensity := r_wei*r_sum + g_wei*g_sum + b_wei*b_sum;
   ecg_array[(i*process_window_dimension_plus)+j , frame_index] := intensity;
   ecg_filtered[(i*process_window_dimension_plus)+j , frame_index] := intensity;
  end;
end;



frame_index :=  frame_index + 1;
progressbar1.Position := progressbar1.Position + 1;
wizard_form.progressbar1.Position := progressbar1.Position;
label17.Caption := inttostr(frame_index);
label19.Caption := inttostr(block_no);

if frame_index > block_no * max_data_count then
begin
 process_timer.Enabled := false;

data_counter := (block_no - 1) * max_data_count;
data_counter_start := data_counter;
data_counter_end := data_counter_start + max_data_count;

global_max := 0;
global_min := 0;

max_ecg_count := (process_window_dimension_plus*process_window_dimension_plus) - 1;

for i := 0 to max_ecg_count do
begin
  for j := data_counter_start to data_counter_end do
    if ecg_array[i,j] > global_max then global_max := ecg_array[i,j];
    if ecg_array[i,j] < global_min then global_min := ecg_array[i,j];


end;

label20.caption := 'Global Max: ' +formatfloat('#.###',global_max) + '   , Global Min: ' + formatfloat('#.###',global_min);
color_scale := max_ecg_count / global_max ;
amplitude := global_max;



  
 showmessage('Process has compeleted, Now Can Post Process Raw Data');

 button14.Enabled := true;
 
end;


end;

procedure TForm1.Button10Click(Sender: TObject);
begin

process_window_dimension_plus := strtoint(edit12.Text);
process_window_dimension := process_window_dimension_plus - 1;

binning_width := strtoint(edit4.Text);
dis := strtoint(edit3.text);

//image2.Width := 7 * process_window_dimension_plus;
//image2.Height := 7 * process_window_dimension_plus;
image3.Width := process_window_dimension;
image3.Height := process_window_dimension;
frame_index := 5;
block_no := 0;

dt := 1000 / strtofloat(edit16.Text);


file_path := label35.Caption;
save_setting_file_path := file_path;

i := 1;
s:='';
repeat
 s := s + file_path[i];
 i := i + 1;
until (file_path[i] = '.');

file_path := '';
i := 1;
j := length(s)-2;
repeat
file_path := file_path + s[i];
i := i + 1;
until (i > j);
label14.Caption := file_path;

if radiobutton1.Checked then mark_color := clblue;
if radiobutton2.Checked then mark_color := clgreen;
if radiobutton3.Checked then mark_color := clyellow;
if radiobutton4.Checked then mark_color := clwhite;



xc := strtoint(label36.Caption);
yc := strtoint(label37.Caption);
x11 := xc;
y11 := yc;
x11_save := x11;
y11_save := y11;

zoom_form.label3.Caption := inttostr(dis);
zoom_form.Label4.Caption := inttostr(x11);
zoom_form.Label5.Caption := inttostr(y11);
zoom_form.Label6.Caption := inttostr(process_window_dimension_plus);

iso_line_form.label1.Caption := inttostr(dis);
iso_line_form.Label2.Caption := inttostr(process_window_dimension_plus);


memo1.Lines.Clear;
memo1.Lines.Add(inttostr(x11_save));
memo1.Lines.Add(inttostr(y11_save));
memo1.Lines.SaveToFile('c:/optical/last_points.oms');






for j := 0 to process_window_dimension do
begin
  for i := 0 to process_window_dimension do
  begin
  x := x11 + i * dis;
  y := y11 + j * dis;

    for m := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x+m , y] := mark_color;
       zoom_form.image1.canvas.pixels[x+m , y] := mark_color;
    end;

    for n := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x , y+n] := mark_color;
       zoom_form.image1.canvas.pixels[x , y+n] := mark_color;
    end;

  x_point[j*process_window_dimension_plus + i] := x;
  y_point[j*process_window_dimension_plus + i] := y;


  end;
end;

 for chart_index := 0 to 1099 do
 begin
      randomize();
      r1 := random(255);
      r2 := random(255);
      r3 := random(255);
      cr := (r1 shl 16) + (r2 shl 8) + r3;
      chart1.Series[chart_index].SeriesColor := cr;

 end;


showmessage('A '+edit12.Text+'x'+edit12.Text+' Mask Points has selected');
button7.Enabled := true;








end;

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ecg_x := trunc(x / pixel_width);
ecg_y := trunc(y / pixel_width);
label21.Caption := 'X: ' + inttostr(ecg_x);
label22.Caption := 'Y: ' + inttostr(ecg_y);
shape1.Visible := true;
//shape1.Width := trunc(600 / process_window_dimension_plus);
//shape1.Height := trunc(400 / process_window_dimension_plus);
shape1.Left := 40 + trunc (ecg_x * (1150/process_window_dimension_plus));
shape1.Top := 60 + trunc (ecg_y * (850/process_window_dimension_plus));

end;

procedure TForm1.Image2Click(Sender: TObject);
begin

ecg_index := ecg_x*process_window_dimension_plus + ecg_y;

chart2.Title.Text.Text := 'ECG Data for Node (' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') -> Index: '+inttostr(ecg_index);
signal_form.Chart1.Title.Text.Text := 'ECG Data for Node (' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') -> Index: '+inttostr(ecg_index);

if checkbox4.Checked then
begin
for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
   chart2.Series[click_counter+1].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i] * fir_scale));
   signal_form.Chart1.Series[click_counter+1].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i] * fir_scale));

end;
chart2.Series[click_counter+1].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
chart2.Series[click_counter+1].SeriesColor := chart1.Series[ecg_index].SeriesColor;

   signal_form.Chart1.Series[click_counter+1].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
   signal_form.Chart1.Series[click_counter+1].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end
else
begin

for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
   chart2.Series[click_counter].AddXY(trunc(i*dt),ecg_array[ecg_index,i]);
   signal_form.Chart1.Series[click_counter].AddXY(trunc(i*dt),ecg_array[ecg_index,i]);
end;

chart2.Series[click_counter].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
chart2.Series[click_counter].SeriesColor := chart1.Series[ecg_index].SeriesColor;

signal_form.Chart1.Series[click_counter].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
signal_form.Chart1.Series[click_counter].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end;
{

 }
click_counter := click_counter + 1;


end;

procedure TForm1.Button11Click(Sender: TObject);
begin
for i := 0 to click_counter do
begin
  chart2.Series[i].Clear;
  signal_form.Chart1.Series[i].Clear;
end;

click_counter := 0;

end;

procedure TForm1.image_animate_timerTimer(Sender: TObject);

begin



for i := 0 to process_window_dimension do
begin
for j := 0 to process_window_dimension do
begin
        data := ecg_array[ (i*process_window_dimension_plus) + j , animate_frame_counter];

        r := trunc (data * color_scale);
        g := 255 - r;
        b := 255 - r;
        cv := rgb(r,g,b);
        image3.Canvas.Pixels[i,j] := cv;

    //  image2.Picture.Bitmap := image3.Picture.Bitmap;


end;
end;

//pixel_width := trunc(image2.Width /process_window_dimension);

for i := 0 to process_window_dimension do
begin
for j := 0 to process_window_dimension do
begin

     cv  :=  image3.Canvas.Pixels[i,j];
     for m := 0 to pixel_width-1 do
       for n := 0 to pixel_width-1 do
         image2.Canvas.Pixels[i*pixel_width+m,j*pixel_width+n] := cv;


end;
end;

image2.canvas.Pen.Width := 1;

for j := 1 to process_window_dimension_plus do
begin
        image2.Canvas.MoveTo(0,j*pixel_width);
        image2.Canvas.LineTo(image2.Width,j*pixel_width);
end;


for j := 1 to process_window_dimension_plus do
begin
        image2.Canvas.MoveTo(j*pixel_width,0);
        image2.Canvas.LineTo(j*pixel_width,image2.Height);
end;



label23.Caption := inttostr(animate_frame_counter);
animate_frame_counter := animate_frame_counter + 1;

if animate_frame_counter > (animate_frame_end - binning_width) then image_animate_timer.Enabled := false;


end;

procedure TForm1.Button12Click(Sender: TObject);
begin

animate_frame_start := frame_index - max_data_count;
animate_frame_end := frame_index;
animate_frame_counter := animate_frame_start;
pixel_width := trunc(image2.Width / process_window_dimension_plus);
image3.Width := process_window_dimension_plus;
image3.Height := process_window_dimension_plus;


image_animate_timer.Interval := strtoint(edit7.Text);
image_animate_timer.Enabled := true;






end;

procedure TForm1.GroupBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
shape1.Visible := false;

end;

procedure TForm1.Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 label24.Caption := inttostr(x) + ',' + inttostr(y);

 if x_scale <> 0 then
 begin
 zoom_form.Shape1.Left := (x11 + trunc((x-95) / x_scale)) * 3;
 zoom_form.Shape1.Top := (y11 + trunc((y-95) / y_scale)) * 3;

 end;
 shape1.Left := chart1.Left;
 shape1.Top := chart1.Top;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
block_no := 0;
process_window_dimension := 15;
process_window_dimension_plus := 16;
pixel_width := 10;
form1.Left := 0;
form1.Top := 0;
form1.Width := 1936;
form1.Height := 1014;
panel1.Left := 0;
panel1.Top := 0;

{
save_memo.Lines.Clear;
save_memo.Lines.LoadFromFile('c:\Optical\default.oms');

edit1.Text := save_memo.Lines[0];
edit2.Text := save_memo.Lines[1];
edit3.Text := save_memo.Lines[2];
edit4.Text := save_memo.Lines[3];
edit5.Text := save_memo.Lines[4];
edit6.Text := save_memo.Lines[5];
edit7.Text := save_memo.Lines[6];
edit8.Text := save_memo.Lines[7];
edit9.Text := save_memo.Lines[8];
edit10.Text := save_memo.Lines[9];
edit11.Text := save_memo.Lines[10];
edit12.Text := save_memo.Lines[11];
edit13.Text := save_memo.Lines[12];
edit14.Text := save_memo.Lines[13];
edit15.Text := save_memo.Lines[14];
edit16.Text := save_memo.Lines[15];


radiobutton1.Checked := strtobool(save_memo.Lines[16]);
radiobutton2.Checked := strtobool(save_memo.Lines[17]);
radiobutton3.Checked := strtobool(save_memo.Lines[18]);
radiobutton4.Checked := strtobool(save_memo.Lines[19]);



checkbox1.Checked := strtobool(save_memo.Lines[20]);
checkbox2.Checked := strtobool(save_memo.Lines[21]);
checkbox3.Checked := strtobool(save_memo.Lines[22]);
checkbox4.Checked := strtobool(save_memo.Lines[23]);

x11 := strtoint(save_memo.Lines[24]);
y11 := strtoint(save_memo.Lines[25]);
x11_save := x11;
y11_save := y11;


save_setting_file_path := save_memo.Lines[26];
save_setting_mech_path := save_memo.Lines[27];

checkbox5.Checked := strtobool(save_memo.Lines[28]);


}

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
if image_animate_timer.Enabled = true then
begin
  image_animate_timer.Enabled := false;
  button6.Caption := 'Resume';
end
else
begin
  image_animate_timer.Enabled := true;
  button6.Caption := 'Pause';
end;

end;

procedure TForm1.Button14Click(Sender: TObject);
begin
if checkbox3.Checked then
begin

ecg_data_start := frame_index - max_data_count;

ecg_data_end := frame_index;

ecg_data_counter := ecg_data_start;

moving_average_window_width := strtoint(edit15.Text);

progressbar2.Position := 0;
wizard_form.progressbar2.Position := 0;

progressbar2.Max := max_data_count - binning_width;
wizard_form.progressbar2.Max := progressbar2.Max;

moving_average_timer.Enabled := true;

end;

end;

procedure TForm1.moving_average_timerTimer(Sender: TObject);
begin
//Moving Average to new array


chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      sum := 0;
      for c1 := 1 to moving_average_window_width do
        sum := sum + ecg_filtered[chart_index,ecg_data_counter+c1-1];

      data_filtered := sum / moving_average_window_width;

      ecg_filtered[chart_index,ecg_data_counter] := data_filtered;


   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension);

chart_i := chart_i + 1;

until (chart_i > process_window_dimension);


 ecg_data_counter := ecg_data_counter+1;

 label9.Caption := inttostr(ecg_data_counter);

progressbar2.Position := progressbar2.Position + 1;
wizard_form.progressbar2.Position := progressbar2.Position;

if ecg_data_counter > (block_no * max_data_count) then
begin
moving_average_timer.Enabled := false;

global_max_fir := 0;
global_min_fir := 0;

max_ecg_count := (process_window_dimension_plus*process_window_dimension_plus) - 1;

for i := 0 to max_ecg_count do
begin
  for j := data_counter_start+1 to data_counter_end do
    if ecg_filtered[i,j] > global_max_fir then global_max_fir := ecg_filtered[i,j];
    if ecg_filtered[i,j] < global_min_fir then global_min_fir := ecg_filtered[i,j];


end;

label1.caption := 'Global Max FIR: ' +formatfloat('#.###',global_max_fir) + '   , Global Min FIR: ' + formatfloat('#.###',global_min_fir);
color_scale_fir := max_ecg_count / global_max_fir ;
amplitude_fir := global_max_fir;
fir_scale := amplitude / amplitude_fir;


end;  // if ecg_data_counter > (block_no * max_data_count) then

end;

procedure TForm1.Button15Click(Sender: TObject);
begin
image1.Width := 128;
image1.Height := 128;
zoom_form.Image1.Width := 128;
zoom_form.Image1.Height := 128;

end;

procedure TForm1.Button16Click(Sender: TObject);
begin
image1.Width := 224;
image1.Height := 160;
zoom_form.Image1.Width := 224;
zoom_form.Image1.Height := 160;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
signal_form.show;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
save_memo.Lines.Clear;

save_memo.Lines.Add(edit3.Text);
save_memo.Lines.Add(edit4.Text);
save_memo.Lines.Add(edit5.Text);
save_memo.Lines.Add(edit6.Text);
save_memo.Lines.Add(edit7.Text);
save_memo.Lines.Add(edit8.Text);
save_memo.Lines.Add(edit9.Text);
save_memo.Lines.Add(edit10.Text);

save_memo.Lines.Add(edit12.Text);
save_memo.Lines.Add(edit13.Text);
save_memo.Lines.Add(edit14.Text);
save_memo.Lines.Add(edit15.Text);
save_memo.Lines.Add(edit16.Text);

save_memo.Lines.Add(booltostr(radiobutton1.Checked));
save_memo.Lines.Add(booltostr(radiobutton2.Checked));
save_memo.Lines.Add(booltostr(radiobutton3.Checked));
save_memo.Lines.Add(booltostr(radiobutton4.Checked));


save_memo.Lines.Add(booltostr(checkbox1.Checked));
save_memo.Lines.Add(booltostr(checkbox2.Checked));
save_memo.Lines.Add(booltostr(checkbox3.Checked));
save_memo.Lines.Add(booltostr(checkbox4.Checked));

save_memo.Lines.Add(inttostr(x11_save));
save_memo.Lines.Add(inttostr(y11_save));

save_memo.Lines.Add(save_setting_file_path);
save_memo.Lines.add(save_setting_mech_path);


save_memo.Lines.Add(booltostr(checkbox5.Checked));

save_memo.Lines.Add(wizard_form.ComboBox1.Items[wizard_form.ComboBox1.itemindex]);
save_memo.Lines.Add(wizard_form.ComboBox2.Items[wizard_form.ComboBox2.itemindex]);
save_memo.Lines.Add(wizard_form.ComboBox3.Items[wizard_form.ComboBox3.itemindex]);




save_memo.Lines.SaveToFile(savedialog1.FileName+'_'+formatdatetime('DD_MM_YY_hh_mm_ss',now)+'.oms');

end;

end;

procedure TForm1.Button21Click(Sender: TObject);
begin
if opendialog1.Execute then
begin
save_memo.Lines.Clear;
save_memo.Lines.LoadFromFile(opendialog1.FileName);



edit3.Text := save_memo.Lines[0];
edit4.Text := save_memo.Lines[1];
edit5.Text := save_memo.Lines[2];
edit6.Text := save_memo.Lines[3];
edit7.Text := save_memo.Lines[4];
edit8.Text := save_memo.Lines[5];
edit9.Text := save_memo.Lines[6];
edit10.Text := save_memo.Lines[7];

edit12.Text := save_memo.Lines[8];
edit13.Text := save_memo.Lines[9];
edit14.Text := save_memo.Lines[10];
edit15.Text := save_memo.Lines[11];
edit16.Text := save_memo.Lines[12];


radiobutton1.Checked := strtobool(save_memo.Lines[13]);
radiobutton2.Checked := strtobool(save_memo.Lines[14]);
radiobutton3.Checked := strtobool(save_memo.Lines[15]);
radiobutton4.Checked := strtobool(save_memo.Lines[16]);



checkbox1.Checked := strtobool(save_memo.Lines[17]);
checkbox2.Checked := strtobool(save_memo.Lines[18]);
checkbox3.Checked := strtobool(save_memo.Lines[19]);
checkbox4.Checked := strtobool(save_memo.Lines[20]);


x11 := strtoint(save_memo.Lines[21]);
y11 := strtoint(save_memo.Lines[22]);
x11_save := x11;
y11_save := y11;


save_setting_file_path := save_memo.Lines[23];
save_setting_mech_path := save_memo.Lines[24];

checkbox5.Checked := strtobool(save_memo.Lines[25]);

wizard_form.ComboBox1.items.clear;
wizard_form.ComboBox1.Items.Add(save_memo.Lines[26]);
wizard_form.ComboBox1.ItemIndex := 0;

wizard_form.ComboBox2.items.clear;
wizard_form.ComboBox2.Items.Add(save_memo.Lines[27]);
wizard_form.ComboBox2.ItemIndex := 0;


wizard_form.ComboBox3.items.clear;
wizard_form.ComboBox3.Items.Add(save_memo.Lines[28]);
wizard_form.ComboBox3.ItemIndex := 0;

//Apply Setting




 if save_setting_mech_path <> '' then mech_Image.Picture.LoadFromFile(save_setting_mech_path);


// load file
process_window_dimension_plus := strtoint(save_memo.Lines[8]);
process_window_dimension := strtoint(save_memo.Lines[8]) - 1;
//image2.Width := 7 * process_window_dimension_plus;
//image2.Height := 7 * process_window_dimension_plus;
image3.Width := process_window_dimension_plus;
image3.Height := process_window_dimension_plus;
frame_index := 5;
block_no := 0;

dt := 1000 / strtofloat(save_memo.Lines[12]);


file_path := save_setting_file_path;


i := 1;
s:='';
repeat
 s := s + file_path[i];
 i := i + 1;
until (file_path[i] = '.');

file_path := '';
i := 1;
j := length(s)-2;
repeat
file_path := file_path + s[i];
i := i + 1;
until (i > j);
label14.Caption := file_path;

if radiobutton1.Checked then mark_color := clblue;
if radiobutton2.Checked then mark_color := clgreen;
if radiobutton3.Checked then mark_color := clyellow;
if radiobutton4.Checked then mark_color := clwhite;



for i := 0 to  buffer_image.Width do
 for j := 0 to buffer_image.Height do
   image1.Canvas.Pixels[i,j] := 0;


for i := 0 to  224 do
 for j := 0 to 224 do
   image2.Canvas.Pixels[i,j] := rgb(0,255,255);


//Load_timer.Enabled := true;
s := file_path + 'f'+inttostr(frame_index)+'.bmp';
label14.Caption := s;

image1.Picture.LoadFromFile(s);



//Mark All

binning_width := strtoint(save_memo.Lines[1]);
dis := strtoint(save_memo.Lines[0]);



for j := 0 to process_window_dimension do
begin
  for i := 0 to process_window_dimension do
  begin
  x := x11 + i * dis;
  y := y11 + j * dis;

    for m := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x+m , y] := mark_color;
       zoom_form.image1.canvas.pixels[x+m , y] := mark_color;
    end;

    for n := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x , y+n] := mark_color;
       zoom_form.image1.canvas.pixels[x , y+n] := mark_color;
    end;

  x_point[j*process_window_dimension_plus + i] := x;
  y_point[j*process_window_dimension_plus + i] := y;


  end;
end;

 for chart_index := 0 to 1099 do
 begin
      randomize();
      r1 := random(255);
      r2 := random(255);
      r3 := random(255);
      cr := (r1 shl 16) + (r2 shl 8) + r3;
      chart1.Series[chart_index].SeriesColor := cr;

 end;


showmessage('A '+edit12.Text+'x'+edit12.Text+' Mask Points has selected');

zoom_form.Image1.Picture := image1.Picture;

wizard_form.Image1.Picture := image1.Picture;

button7.Enabled := true;

memo1.Lines.Clear;
memo1.Lines.Add(inttostr(x11_save));
memo1.Lines.Add(inttostr(y11_save));
memo1.Lines.SaveToFile('c:/optical/last_points.oms');



zoom_form.label3.Caption := inttostr(dis);
zoom_form.Label4.Caption := inttostr(x11);
zoom_form.Label5.Caption := inttostr(y11);
zoom_form.Label6.Caption := inttostr(process_window_dimension_plus);

iso_line_form.label1.Caption := inttostr(dis);
iso_line_form.Label2.Caption := inttostr(process_window_dimension_plus);





//Fill in Wizard Form

wizard_form.combobox5.ItemIndex := strtoint(form1.Edit3.Text) - 1;
wizard_form.edit1.Text := Edit1.Text;
{
2
4
8
12
16
20
24
32
Drag Defined
}
wizard_form.combobox6.ItemIndex := 8;
if Edit12.Text = '2'   then wizard_form.combobox6.ItemIndex := 0;
if Edit12.Text = '4'   then wizard_form.combobox6.ItemIndex := 1;
if Edit12.Text = '8'   then wizard_form.combobox6.ItemIndex := 2;
if Edit12.Text = '12'   then wizard_form.combobox6.ItemIndex := 3;
if Edit12.Text = '16'   then wizard_form.combobox6.ItemIndex := 4;
if Edit12.Text = '20'   then wizard_form.combobox6.ItemIndex := 5;
if Edit12.Text = '24'   then wizard_form.combobox6.ItemIndex := 6;
if Edit12.Text = '32'   then wizard_form.combobox6.ItemIndex := 7;



if radiobutton1.Checked then wizard_form.combobox4.ItemIndex := 0;
if radiobutton2.Checked then wizard_form.combobox4.ItemIndex := 1;
if radiobutton3.Checked then wizard_form.combobox4.ItemIndex := 2;
if radiobutton4.Checked then wizard_form.combobox4.ItemIndex := 3;

wizard_form.combobox7.ItemIndex := strtoint(form1.Edit4.Text);

wizard_form.edit2.Text := Edit6.Text;

wizard_form.edit3.Text := Edit15.Text;





end;    //if opendialog1.Execute then

end;

procedure TForm1.Button13Click(Sender: TObject);
begin
edit8.Text := '0.243';
edit10.Text := '0.410';
edit9.Text := '0.347';
end;

procedure TForm1.Load_timerTimer(Sender: TObject);
begin


s := file_path + 'f'+inttostr(frame_index)+'.bmp';
label14.Caption := s;

buffer_image.Picture.LoadFromFile(s);

if ((frame_index > 5) and (frame_index <= 6)) then
begin
for i := 0 to  buffer_image.Width do
begin
 for j := 0 to buffer_image.Height do
 begin
   cv := buffer_image.Canvas.Pixels[i,j];
   g := getgvalue(cv);
   image1.Canvas.Pixels[i,j] := image1.Canvas.Pixels[i,j] + buffer_image.Canvas.Pixels[i,j];
 end;
end;

end;  //if ((frame_index > 5) and (frame_index < 12) then

{
if ((frame_index > 15) and (frame_index <= 20)) then
begin
for i := 0 to  buffer_image.Width do
begin
 for j := 0 to buffer_image.Height do
 begin
   cv := buffer_image.Canvas.Pixels[i,j];
   g := getgvalue(cv);
   image1.Canvas.Pixels[i,j] := image1.Canvas.Pixels[i,j] + rgb(0,getgvalue(buffer_image.Canvas.Pixels[i,j]),0);
 end;
end;

end;  //if ((frame_index > 5) and (frame_index < 12) then
}

frame_index := frame_index + 1;

if frame_index > 6 then
begin

for i := 0 to  buffer_image.Width do
begin
 for j := 0 to buffer_image.Height do
 begin
   cv := image1.Canvas.Pixels[i,j];
   r := getrvalue(cv);
   g := getgvalue(cv);
   b := getbvalue(cv);


   if ((r <= 35) and (g <= 35) and (b <= 35)) then image1.Canvas.Pixels[i,j] := rgb(35,35,35)
   else image1.Canvas.Pixels[i,j] := rgb(r,g,b);

 end;
end;


   load_timer.Enabled := false;

   zoom_form.Image1.Picture := image1.Picture;

   wizard_form.Image1.Picture := image1.Picture;


  chart1.Title.Text.Clear;

  chart1.Title.Text.Add('Signals Map ('+edit12.text+'x'+edit12.text+')');

  showmessage('Now Select mapping region by click on loaded image');



end;
end;

procedure TForm1.MultiplyBy21Click(Sender: TObject);
begin
//showmessage('multiply by 2');

for i := 0 to click_counter do
begin
  chart2.Series[i].Clear;
  signal_form.Chart1.Series[i].Clear;
end;

click_counter := 0;

ecg_index := ecg_x*process_window_dimension_plus + ecg_y;

chart2.Title.Text.Text := 'ECG Data for Node (' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') -> Index: '+inttostr(ecg_index)+' x2';
signal_form.Chart1.Title.Text.Text := 'ECG Data for Node (' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') -> Index: '+inttostr(ecg_index)+' x2';

if checkbox4.Checked then
begin
for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
   chart2.Series[click_counter+1].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i]*fir_scale)*2);
   signal_form.Chart1.Series[click_counter+1].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i]*fir_scale)*2);

end;
chart2.Series[click_counter+1].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x2';
chart2.Series[click_counter+1].SeriesColor := chart1.Series[ecg_index].SeriesColor;

   signal_form.Chart1.Series[click_counter+1].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x2';
   signal_form.Chart1.Series[click_counter+1].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end
else
begin

for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
   chart2.Series[click_counter].AddXY(trunc(i*dt),ecg_array[ecg_index,i] *2);
   signal_form.Chart1.Series[click_counter].AddXY(trunc(i*dt),ecg_array[ecg_index,i]*2);
end;

chart2.Series[click_counter].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x2';
chart2.Series[click_counter].SeriesColor := chart1.Series[ecg_index].SeriesColor;

signal_form.Chart1.Series[click_counter].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x2';
signal_form.Chart1.Series[click_counter].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end;
{

 }
click_counter := click_counter + 1;






end;

procedure TForm1.x31Click(Sender: TObject);
begin
for i := 0 to click_counter do
begin
  chart2.Series[i].Clear;
  signal_form.Chart1.Series[i].Clear;
end;

click_counter := 0;

ecg_index := ecg_x*process_window_dimension_plus + ecg_y;

chart2.Title.Text.Text := 'ECG Data for Node (' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') -> Index: '+inttostr(ecg_index)+' x3';
signal_form.Chart1.Title.Text.Text := 'ECG Data for Node (' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') -> Index: '+inttostr(ecg_index)+' x3';

if checkbox4.Checked then
begin
for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
   chart2.Series[click_counter+1].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i]*fir_scale)*3);
   signal_form.Chart1.Series[click_counter+1].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i]*fir_scale)*3);

end;
chart2.Series[click_counter+1].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x3';
chart2.Series[click_counter+1].SeriesColor := chart1.Series[ecg_index].SeriesColor;

   signal_form.Chart1.Series[click_counter+1].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x3';
   signal_form.Chart1.Series[click_counter+1].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end
else
begin

for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
   chart2.Series[click_counter].AddXY(trunc(i*dt),ecg_array[ecg_index,i] *3);
   signal_form.Chart1.Series[click_counter].AddXY(trunc(i*dt),ecg_array[ecg_index,i]*3);
end;

chart2.Series[click_counter].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x3';
chart2.Series[click_counter].SeriesColor := chart1.Series[ecg_index].SeriesColor;

signal_form.Chart1.Series[click_counter].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x3';
signal_form.Chart1.Series[click_counter].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end;
{

 }
click_counter := click_counter + 1;

end;

procedure TForm1.x41Click(Sender: TObject);
begin
for i := 0 to click_counter do
begin
  chart2.Series[i].Clear;
  signal_form.Chart1.Series[i].Clear;
end;

click_counter := 0;

ecg_index := ecg_x*process_window_dimension_plus + ecg_y;

chart2.Title.Text.Text := 'ECG Data for Node (' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') -> Index: '+inttostr(ecg_index)+' x4';
signal_form.Chart1.Title.Text.Text := 'ECG Data for Node (' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') -> Index: '+inttostr(ecg_index)+' x4';

if checkbox4.Checked then
begin
for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
   chart2.Series[click_counter+1].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i]*fir_scale)*4);
   signal_form.Chart1.Series[click_counter+1].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i]*fir_scale)*4);

end;
chart2.Series[click_counter+1].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x4';
chart2.Series[click_counter+1].SeriesColor := chart1.Series[ecg_index].SeriesColor;

   signal_form.Chart1.Series[click_counter+1].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x4';
   signal_form.Chart1.Series[click_counter+1].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end
else
begin

for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
   chart2.Series[click_counter].AddXY(trunc(i*dt),ecg_array[ecg_index,i] *4);
   signal_form.Chart1.Series[click_counter].AddXY(trunc(i*dt),ecg_array[ecg_index,i]*4);
end;

chart2.Series[click_counter].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x4';
chart2.Series[click_counter].SeriesColor := chart1.Series[ecg_index].SeriesColor;

signal_form.Chart1.Series[click_counter].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') x4';
signal_form.Chart1.Series[click_counter].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end;
{

 }
click_counter := click_counter + 1;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
save_memo.Lines.Clear;


save_memo.Lines.Add(edit3.Text);
save_memo.Lines.Add(edit4.Text);
save_memo.Lines.Add(edit5.Text);
save_memo.Lines.Add(edit6.Text);
save_memo.Lines.Add(edit7.Text);
save_memo.Lines.Add(edit8.Text);
save_memo.Lines.Add(edit9.Text);
save_memo.Lines.Add(edit10.Text);

save_memo.Lines.Add(edit12.Text);
save_memo.Lines.Add(edit13.Text);
save_memo.Lines.Add(edit14.Text);
save_memo.Lines.Add(edit15.Text);
save_memo.Lines.Add(edit16.Text);

save_memo.Lines.Add(booltostr(radiobutton1.Checked));
save_memo.Lines.Add(booltostr(radiobutton2.Checked));
save_memo.Lines.Add(booltostr(radiobutton3.Checked));
save_memo.Lines.Add(booltostr(radiobutton4.Checked));


save_memo.Lines.Add(booltostr(checkbox1.Checked));
save_memo.Lines.Add(booltostr(checkbox2.Checked));
save_memo.Lines.Add(booltostr(checkbox3.Checked));
save_memo.Lines.Add(booltostr(checkbox4.Checked));

save_memo.Lines.SaveToFile('c:\Optical\default.oms');

end;

procedure TForm1.Button22Click(Sender: TObject);
begin
if openpicturedialog2.Execute then
begin
save_setting_mech_path := openpicturedialog2.FileName;
  mech_Image.Picture.LoadFromFile(save_setting_mech_path);


end;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin

binning_width := strtoint(edit4.Text);
dis := strtoint(edit3.text);

memo1.Lines.Clear;
memo1.Lines.LoadFromFile('c:/optical/last_points.oms');
x11_save := strtoint(memo1.Lines[0]);
y11_save := strtoint(memo1.Lines[1]);

x11 := x11_save;
y11 := y11_save;

zoom_form.label3.Caption := inttostr(dis);
zoom_form.Label4.Caption := inttostr(x11);
zoom_form.Label5.Caption := inttostr(y11);
zoom_form.Label6.Caption := inttostr(process_window_dimension_plus);



iso_line_form.label1.Caption := inttostr(dis);
iso_line_form.Label2.Caption := inttostr(process_window_dimension_plus);




if dis-binning_width > 0 then
begin
if radiobutton1.Checked then mark_color := clblue;
if radiobutton2.Checked then mark_color := clgreen;
if radiobutton3.Checked then mark_color := clyellow;
if radiobutton4.Checked then mark_color := clwhite;


for j := 0 to process_window_dimension do
begin
  for i := 0 to process_window_dimension do
  begin
  x := x11 + i * dis;
  y := y11 + j * dis;

    for m := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x+m , y] := mark_color;
       zoom_form.image1.canvas.pixels[x+m , y] := mark_color;
    end;

    for n := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x , y+n] := mark_color;
       zoom_form.image1.canvas.pixels[x , y+n] := mark_color;
    end;

  x_point[j*process_window_dimension_plus + i] := x;
  y_point[j*process_window_dimension_plus + i] := y;


  end;
end;

 for chart_index := 0 to 1099 do
 begin
      randomize();
      r1 := random(255);
      r2 := random(255);
      r3 := random(255);
      cr := (r1 shl 16) + (r2 shl 8) + r3;
      chart1.Series[chart_index].SeriesColor := cr;

 end;


showmessage('A '+edit12.Text+'x'+edit12.Text+' Mask Points has selected');
button7.Enabled := true;

end //if dis-binning_width > 0 then
else
begin
 showmessage('Distance minus window width must be greater than zero');

end;


end;

procedure TForm1.click_pointClick(Sender: TObject);
begin

ecg_x := strtoint(label32.Caption);
ecg_y := strtoint(label33.Caption);

ecg_index := ecg_x*process_window_dimension_plus + ecg_y;

chart2.Title.Text.Text := 'ECG Data for Node (' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') -> Index: '+inttostr(ecg_index);
signal_form.Chart1.Title.Text.Text := 'ECG Data for Node (' + inttostr(ecg_x) +','+ inttostr(ecg_y)+') -> Index: '+inttostr(ecg_index);
click_counter := click_counter + 1;

animate_frame_start := animate_frame_start + 2;
animate_frame_end := animate_frame_end - 3;
if checkbox4.Checked then
begin
for i := animate_frame_start to (animate_frame_end - moving_average_window_width) do
begin
   chart2.Series[click_counter+1].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i]*fir_scale));
   signal_form.Chart1.Series[click_counter+1].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i]*fir_scale));

end;
chart2.Series[click_counter+1].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
chart2.Series[click_counter+1].SeriesColor := chart1.Series[ecg_index].SeriesColor;

   signal_form.Chart1.Series[click_counter+1].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
   signal_form.Chart1.Series[click_counter+1].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end
else
begin

for i := animate_frame_start to (animate_frame_end - moving_average_window_width) do
begin
   chart2.Series[click_counter].AddXY(trunc(i*dt),ecg_array[ecg_index,i]);
   signal_form.Chart1.Series[click_counter].AddXY(trunc(i*dt),ecg_array[ecg_index,i]);
end;

chart2.Series[click_counter].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
chart2.Series[click_counter].SeriesColor := chart1.Series[ecg_index].SeriesColor;

signal_form.Chart1.Series[click_counter].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
signal_form.Chart1.Series[click_counter].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end;


end;

procedure TForm1.apdx_iso_buttonClick(Sender: TObject);
begin



data_counter := (block_no * max_data_count) - max_data_count + 5;

ecg_x := strtoint(label32.Caption);
ecg_y := strtoint(label33.Caption);

ecg_index := ecg_x*process_window_dimension_plus + ecg_y;
apdx := strtoint(apdx_edit.Text) / 100;

iso_line_form.Label4.Caption := 'APD-'+apdx_edit.Text+' Calculation';

iso_line_form.Label5.Caption := 'Calculate for All Points';

// reset arrays
chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      ecg_max_array[chart_index] := -1000;

      ecg_max_time[chart_index] := 0;

      ecg_min_array[chart_index] := 1000;

   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);


// find Max , Min , Max_index for each ecg array
data_counter := (block_no * max_data_count) - max_data_count + 5;
repeat

chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;


      if fir_show then data := (ecg_filtered[chart_index,data_counter] * fir_scale)
      else  data := ecg_array[chart_index,data_counter];

      if data > ecg_max_array[chart_index] then
      begin
      ecg_max_array[chart_index] := data;
      ecg_max_time[chart_index] := data_counter * dt;
      end;
      if data < ecg_min_array[chart_index] then ecg_min_array[chart_index] := data;



   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);

// chart1.Series[chart_index].SeriesColor := mark_color;

 data_counter := data_counter+1;



until ( data_counter > ((block_no * max_data_count) - binning_width) );


// calculate amplitude
chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      ecg_amp_array[chart_index] := ecg_max_array[chart_index] - ecg_min_array[chart_index];

      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);


//calculate APD-90 for each super pixel
chart_i := 0;
chart_j := 0;
apd90_max := -10000;
apd90_min := 10000;
repeat

   chart_j := 0;

   repeat

      chart_index := (chart_i*process_window_dimension_plus) + chart_j;
      apd90_cross_line := ecg_max_array[chart_index] - (  apdx * ecg_amp_array[chart_index]) ;
      data_counter := (block_no * max_data_count) - max_data_count + 5;
   // find left cross of apd90 line with ecg curve
   repeat
      if fir_show then data := (ecg_filtered[chart_index,data_counter] * fir_scale)
      else  data := ecg_array[chart_index,data_counter];
      point1 := data - apd90_cross_line;

      if fir_show then data := (ecg_filtered[chart_index,data_counter+1] * fir_scale)
      else  data := ecg_array[chart_index,data_counter+1];
      point2 := data - apd90_cross_line;

      data_counter := data_counter+1;

   until ((point1*point2 <= 0) or ( data_counter > ((block_no * max_data_count) - binning_width) ));
   left_cross := data_counter * dt;

   // find right cross of apd90 line with ecg curve
   data_counter := data_counter+5;
   repeat
      if fir_show then data := (ecg_filtered[chart_index,data_counter] * fir_scale)
      else  data := ecg_array[chart_index,data_counter];
      point1 := data  - apd90_cross_line;

      if fir_show then data := (ecg_filtered[chart_index,data_counter+1] * fir_scale)
      else  data := ecg_array[chart_index,data_counter+1];
      point2 := data - apd90_cross_line;

      data_counter := data_counter+1;

   until ((point1*point2 <= 0) or ( data_counter > ((block_no * max_data_count) - binning_width) ));
   right_cross := data_counter * dt;

   apd90_array[chart_index] := right_cross - left_cross;
   if apd90_array[chart_index] > apd90_max then apd90_max := apd90_array[chart_index];
   if apd90_array[chart_index] < apd90_min then apd90_min := apd90_array[chart_index];


      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);

iso_line_form.Label6.Caption := 'APD-'+apdx_edit.Text+' Max: ' + formatfloat('#.##',apd90_max)+'  , Min: ' + formatfloat('#.##',apd90_min);
iso_line_form.Label2.Caption := formatfloat('#.##',apd90_max)+ ' ms';
//showmessage('Isochroun Map');

// Plot results

// scale on right
j := 0;
repeat

r := j;
g := 0;
b := 255-r;

 iso_line_form.Image2.Canvas.Pen.Color := rgb(r,g,b);
 iso_line_form.Image2.Canvas.MoveTo(0,j);
 iso_line_form.Image2.Canvas.LineTo(33,j);

 j := j + 1;
until (j > 255);


//plot temp image
//clear temp image first
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i * process_window_dimension_plus) + chart_j;

      image3.Canvas.Pixels[chart_i,chart_j] := 0;

      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);

//fill temp image pixels by apd90 color representation
chart_i := 0;
chart_j := 0;
scale :=  255 / (apd90_max - apd90_min);
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i * process_window_dimension_plus) + chart_j;

        data := (apd90_array[chart_index]);
        if ecg_amp_array[chart_index] > 10 then
        begin
        data := (data * scale) - apd90_min;
        r := 255 - trunc(data);
        g := 0;
        b := trunc(data);
        cv := rgb(r,g,b);
        image3.Canvas.Pixels[chart_i,chart_j] := cv;
        end
        else image3.Canvas.Pixels[chart_i,chart_j] := 0;

       // if ecg_index = chart_index then image3.Canvas.Pixels[chart_i,chart_j] := rgb(100,255,255);
      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);




// plot main image on iso line form

pixel_width := trunc(iso_line_form.image1.Width / process_window_dimension_plus);

for i := 0 to process_window_dimension do
begin
for j := 0 to process_window_dimension do
begin

     cv  :=  image3.Canvas.Pixels[i,j];
     for m := 0 to pixel_width-1 do
       for n := 0 to pixel_width-1 do
         iso_line_form.image1.Canvas.Pixels[i*pixel_width+m,j*pixel_width+n] := cv;


end;
end;



iso_line_form.show;
iso_line_form.Caption := 'APD'+apdx_edit.Text+' Iso-Line Map';

end;

procedure TForm1.cv_iso_bottunClick(Sender: TObject);
begin
d := strtofloat (edit1.text);

data_counter := (block_no * max_data_count) - max_data_count + 5;

ecg_x := strtoint(label32.Caption);
ecg_y := strtoint(label33.Caption);

ecg_index := ecg_x*process_window_dimension_plus + ecg_y;

iso_line_form.Label4.Caption := 'Point Index: ' + inttostr(ecg_index);

// find max time of right clicked
first_max_time := -10000;
first_max := -10000;
repeat


      if fir_show then data := (ecg_filtered[ecg_index,data_counter] * fir_scale)
      else  data := ecg_array[ecg_index,data_counter];

      if data > first_max then
      begin
      first_max_time := data_counter * dt;
      first_max := data;
      end;


 data_counter := data_counter + 1;

until ( data_counter > ((block_no * max_data_count) - binning_width) );
iso_line_form.Label5.Caption := 'Point max time: ' + formatfloat('#.##',first_max_time);

// reset arrays
chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      ecg_max_array[chart_index] := -1000;

      ecg_max_time[chart_index] := 0;

      ecg_min_array[chart_index] := 1000;

   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);


// find Max , Min , Max_index for each ecg array
data_counter := (block_no * max_data_count) - max_data_count + 5;
repeat

chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;


      if fir_show then data := (ecg_filtered[chart_index,data_counter] * fir_scale)
      else  data := ecg_array[chart_index,data_counter];

      if data > ecg_max_array[chart_index] then
      begin
      ecg_max_array[chart_index] := data;
      ecg_max_time[chart_index] := data_counter * dt;
      end;
      if data < ecg_min_array[chart_index] then ecg_min_array[chart_index] := data;



   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);

// chart1.Series[chart_index].SeriesColor := mark_color;

 data_counter := data_counter+1;



until ( data_counter > ((block_no * max_data_count) - binning_width) );


// calculate amplitude
chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      ecg_amp_array[chart_index] := ecg_max_array[chart_index] - ecg_min_array[chart_index];


      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);

{
// calculate first activation
first_max_time := 1000;
last_max_time := -1000;

chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      if ecg_amp_array[chart_index] > 10 then
      begin
      data := ecg_max_time[chart_index];
      if data < first_max_time then

      begin
      first_max_time := data;
      first_max_index := chart_index;
      end;

      if data > last_max_time   then
      begin
      last_max_time := data;
      last_max_index := chart_index;
      end;

      end;

      conduction_delay_array[chart_index] := 0;

      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension);
 }

//calculate conduction velocity for each super pixel

// First Calculate Conduction Delays
chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;


      data := ecg_max_time[chart_index];
      conduction_delay_array[chart_index] := data - first_max_time;
      {
      if ecg_amp_array[chart_index] > 25 then conduction_delay_array[chart_index] := data - first_max_time
      else conduction_delay_array[chart_index] := 1;  }

     // if conduction_delay_array[chart_index] < 0 then conduction_delay_array[chart_index] := 1;
      //if conduction_delay_array[chart_index] > 100 then conduction_delay_array[chart_index] := 100;


      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);





//Second Calculate Conduction Velocity by Finite Difference Methode
//attention to start and stop index of i , j
chart_i := 1;
chart_j := 1;

conduction_velocity_max := -10000;

conduction_velocity_min := 10000;


repeat

   chart_j := 1;

   repeat
      chart_index := ((chart_i+1)*process_window_dimension_plus) + chart_j;
      t_i_plus_j := conduction_delay_array[chart_index];
      chart_index := ((chart_i-1)*process_window_dimension_plus) + chart_j;
      t_i_minus_j := conduction_delay_array[chart_index];
      Gx := (t_i_plus_j - t_i_minus_j) / (2*d);


      chart_index := (chart_i*process_window_dimension_plus) + (chart_j+1);
      t_i_j_plus := conduction_delay_array[chart_index];
      chart_index := (chart_i*process_window_dimension_plus) + (chart_j-1);
      t_i_j_minus := conduction_delay_array[chart_index];
      Gy := (t_i_j_plus - t_i_j_minus) / (2*d);

      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

    //  if ecg_amp_array[chart_index] > 10 then
   //   begin
       if ((Gy<>0) or (Gx<>0)) then G_amp :=  (1 / sqrt( ((Gx*Gx) + (Gy*Gy)) )) * 1000 //G_amp := sqrt( 1 / ((Gx*Gx) + (Gy*Gy)))* 1000000
       else G_amp := 0;
       conduction_velocity_amp_array[chart_index] := G_amp;  // mm / ms
       if G_amp<> 0 then
       begin
       ux := Gx * G_amp;
       uy := Gy * G_amp;
   //    end
   //    else
   //    begin
   //    ux := 0;
   //    uy := 0;
   //    end;

      end
      else conduction_velocity_amp_array[chart_index] := 0;

      conduction_velocity_u_x_array[chart_index] := ux / 1000;
      conduction_velocity_u_y_array[chart_index] := uy / (-1000);
      
      if conduction_velocity_amp_array[chart_index] > conduction_velocity_max   then conduction_velocity_max := conduction_velocity_amp_array[chart_index];

      if conduction_velocity_amp_array[chart_index] < conduction_velocity_min   then conduction_velocity_min := conduction_velocity_amp_array[chart_index];


      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension-1);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension-1);

iso_line_form.Label6.Caption := 'Conduction Velocity Max: ' + formatfloat('#.###',conduction_velocity_max)+'  , Min: ' + formatfloat('#.###',conduction_velocity_min);
iso_line_form.Label2.Caption := formatfloat('#.###',conduction_velocity_max)+ ' mm/s';
iso_line_form.Label3.Caption := formatfloat('#.###',conduction_velocity_min)+ ' mm/s';
//showmessage('Isochroun Map');

// Plot results

// scale on right
j := 0;
repeat

r := trunc(j);
g := 0;
b := 255-r;
i := 0;
repeat
 iso_line_form.Image2.Canvas.Pixels[i,j] := rgb(r,g,b);
 i := i + 1;
until (i > 33);
 j := j + 1;
until (j > 255);


//plot temp image
//conduction_velocity_max := 20;

chart_i := 0;
chart_j := 0;
scale :=  255 / (conduction_velocity_max - conduction_velocity_min);
//clear temp image first
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i * process_window_dimension_plus) + chart_j;

      image3.Canvas.Pixels[chart_i,chart_j] := 0;

      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension);

//brush pixels on temp image
chart_i := 1;
chart_j := 1;
scale :=  255 / (conduction_velocity_max - conduction_velocity_min);
repeat

   chart_j := 1;

   repeat
      chart_index := (chart_i * process_window_dimension_plus) + chart_j;

        data := (conduction_velocity_amp_array[chart_index] - conduction_velocity_min);
       // if ecg_amp_array[chart_index] > 10 then
       // begin
        data := data * scale;
        r := 255 - trunc(data);
        g := 0;
        b := trunc(data);
        cv := rgb(r,g,b);
        if ((chart_i <> 0) and (chart_j <> 0) and (chart_i <> process_window_dimension) and (chart_i <> process_window_dimension)) then image3.Canvas.Pixels[chart_i,chart_j] := cv;
      //  end;

      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension-1);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension-1);



// plot main image on iso line form

pixel_width := trunc(iso_line_form.image1.Width / process_window_dimension_plus);

for i := 0 to process_window_dimension do
begin
for j := 0 to process_window_dimension do
begin

     cv  :=  image3.Canvas.Pixels[i,j];
     for m := 0 to pixel_width-1 do
       for n := 0 to pixel_width-1 do
         iso_line_form.image1.Canvas.Pixels[i*pixel_width+m,j*pixel_width+n] := cv;


end;
end;


//plot conduction velocity arrow map (directions)
iso_line_form.Series1.XValues.DateTime:=False;
iso_line_form.Series1.Clear;
chart_i := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;
      
      ux := conduction_velocity_u_x_array[chart_index];
      uy := conduction_velocity_u_y_array[chart_index];

     

      iso_line_form.Series1.AddArrow(chart_i,chart_j,chart_i+ux,chart_j+uy);

      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension);


iso_line_form.show;
iso_line_form.Caption := 'Conduction Velocity Iso-Line Map';

end;

procedure TForm1.plot_rawClick(Sender: TObject);
begin
signal_form.chart1.View3D := true;
signal_form.Show;

ecg_x := strtoint(label32.Caption);
ecg_y := strtoint(label33.Caption);

signal_form.Chart1.Title.Text.Text := 'Data for Node Raw No' + inttostr(ecg_y);

for i := 0 to process_window_dimension do
begin
  signal_form.Chart1.Series[i].Clear;
end;



for ecg_x := 0 to process_window_dimension do

begin

ecg_index := ecg_x*process_window_dimension_plus + ecg_y;

//chart2.Title.Text.Text := 'ECG Data for Node Raw No' + inttostr(ecg_y);


if checkbox4.Checked then
begin
for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
   signal_form.Chart1.Series[ecg_x].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i]*fir_scale));

end;

   signal_form.Chart1.Series[ecg_x].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
   signal_form.Chart1.Series[ecg_x].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end
else
begin

for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
   signal_form.Chart1.Series[ecg_x].AddXY(trunc(i*dt),ecg_array[ecg_index,i]);
end;



signal_form.Chart1.Series[ecg_x].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
signal_form.Chart1.Series[ecg_x].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end;


end; //for ecg_x := 0 to process_window_dimension do

 series_counter := process_window_dimension_plus;
repeat

  signal_form.Chart1.Series[series_counter].ShowInLegend := false;
  signal_form.Chart1.Series[series_counter].Active := false;
  //signal_form.Chart1.Series[series_counter].ParentChart := nil;
  // signal_form.Chart1.Series[series_counter].Free;

   series_counter := series_counter+1;

until (series_counter >= 32 );





  {
  A) Setting the Series Active property:

Series1.Active := False ;

B) Removing the Series from their parent Chart:

Series1.ParentChart := nil;

C) Destroying the Series completely:

Series1.Free ;

}



end;

procedure TForm1.plot_columnClick(Sender: TObject);
begin

signal_form.chart1.View3D := true;
signal_form.Show;

ecg_x := strtoint(label32.Caption);
ecg_y := strtoint(label33.Caption);

signal_form.Chart1.Title.Text.Text := 'Data for Node Column No' + inttostr(ecg_y);

for i := 0 to 31 do
begin
  chart2.Series[i].Clear;
  signal_form.Chart1.Series[i].Clear;
end;

for ecg_y := 0 to process_window_dimension do

begin

ecg_index := ecg_x*process_window_dimension_plus + ecg_y;

//chart2.Title.Text.Text := 'ECG Data for Node Raw No' + inttostr(ecg_y);


if checkbox4.Checked then
begin
for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
  signal_form.Chart1.Series[ecg_y].AddXY(trunc(i*dt),(ecg_filtered[ecg_index,i]*fir_scale));

end;

   signal_form.Chart1.Series[ecg_y].Title := 'Filtered(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
   signal_form.Chart1.Series[ecg_y].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end
else
begin

for i := animate_frame_start to (animate_frame_end - binning_width) do
begin
   signal_form.Chart1.Series[ecg_y].AddXY(trunc(i*dt),ecg_array[ecg_index,i]);
end;


signal_form.Chart1.Series[ecg_y].Title := '(' + inttostr(ecg_x) +','+ inttostr(ecg_y)+')';
signal_form.Chart1.Series[ecg_y].SeriesColor := chart1.Series[ecg_index].SeriesColor;


end;


end; //for ecg_x := 0 to process_window_dimension do


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
iso_line_form.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
wizard_form.show;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
//welcome_form.show;
//form1.Hide;
//welcome_form.Left := 0;
//welcome_form.Top := 0;
end;

procedure TForm1.ManualAdvancedProcessing1Click(Sender: TObject);
begin
login_form.Show;
end;

procedure TForm1.EasySettingWizard1Click(Sender: TObject);
begin
//Panel1.Visible := true;
//wizard_form.Parent := panel1;
wizard_form.Show;
end;

procedure TForm1.ShowActivationResultsandCharts1Click(Sender: TObject);
begin

ShowWindow(wizard_form.Handle, SW_SHOWMINIMIZED);
//wizard_form.Show;

chart1.Parent := results_form;
chart1.Left := 0;
chart1.Top := 0;

results_form.parent := panel1;

zoom_form.Parent := panel1;
zoom_form.Left := 0;
zoom_form.Top:= 0;

zoom_form.Show;

results_form.show;
results_form.Left := zoom_form.Width - 50;
 results_form.Top := 50;
 results_form.Height := 900;

signal_form.Parent := panel1;

panel1.Show;
end;

procedure TForm1.ExportImages1Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
signal_form.Chart1.SaveToBitmapFile(savedialog1.FileName+'-Signal.bmp');



end;

end;

procedure TForm1.Button24Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
assignfile(save_file,savedialog1.FileName+'_processed.txt');
rewrite(save_file);

save_string := '#Raw Images Path->'+file_path;
writeln(save_file,save_string);

dis := strtoint(edit3.text);
save_string := '#Points Distance in Pixels->'+inttostr(dis);
writeln(save_file,save_string);

binning_width := strtoint(edit4.Text);
save_string := '#Bining Window (Neighberhood pixels)->'+inttostr(binning_width);
writeln(save_file,save_string);


process_window_dimension_plus := strtoint(edit12.Text);
save_string := '#Processing Window Dimensions->'+inttostr(process_window_dimension_plus);
writeln(save_file,save_string);

save_string := '#Frames per Second->'+(edit16.Text);
writeln(save_file,save_string);

save_string := '#Actual Points Distance->'+(edit1.Text);
writeln(save_file,save_string);

save_string := '#Frames per Process->'+(edit6.Text);
writeln(save_file,save_string);


r_wei := strtofloat(edit8.Text);
g_wei := strtofloat(edit10.Text);
b_wei := strtofloat(edit9.Text);
save_string := '#R Weight->'+floattostr(r_wei);
writeln(save_file,save_string);
save_string := '#G Weight->'+floattostr(g_wei);
writeln(save_file,save_string);
save_string := '#B Weight->'+floattostr(b_wei);
writeln(save_file,save_string);

moving_average_window_width := strtoint(edit15.Text);
save_string := '#Moving Average Window Width->'+inttostr(moving_average_window_width);
writeln(save_file,save_string);


save_string := '#X11->'+inttostr(x11_save);
writeln(save_file,save_string);

save_string := '#Y11->'+inttostr(y11_save);
writeln(save_file,save_string);

if checkbox4.Checked then save_string := '#Filtered Data->Y'
else save_string := '#Filtered Data->N';
writeln(save_file,save_string);

save_string := '#*****************************************************#';
writeln(save_file,save_string);

data_counter := 1;

repeat
save_string := '';

 chart_i := 0;

 chart_j := 0;

repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

     if fir_show then data := (ecg_filtered[chart_index,data_counter] * fir_scale) + y_offset
      else  data := ecg_array[chart_index,data_counter] + y_offset;

      data := trunc(data*10) / 10;
      if data <> 0 then
      begin
      data := data;
      end;

      save_string := save_string + floattostr(data)+'#';

   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension);


data_counter := data_counter + 1;
writeln(save_file,save_string);

until (data_counter > (block_no * max_data_count));
closefile(save_file);

end;

end;

procedure TForm1.Button25Click(Sender: TObject);
var
l : integer;
begin
if opendialog1.Execute then
begin
assignfile(open_file,opendialog1.FileName);
reset(open_file);

//save_string := '#Raw Images Path: '+file_path;
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
label38.Caption := 'Raw Images Path: ' + s;
file_path := s;


//dis
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
edit3.text := s;
dis := strtoint(edit3.text);


//binning_width
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
edit4.text := s;
binning_width := strtoint(edit4.Text);


//Process window dimension
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
edit12.text := s;
process_window_dimension_plus := strtoint(edit12.Text);
process_window_dimension := process_window_dimension_plus - 1;


//Frame Per Second
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
edit16.text := s;

//Actual Distance mm
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
edit1.text := s;

//Frames per process
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
edit6.text := s;
max_data_count := strtoint(edit6.Text);
animate_frame_end := max_data_count;
animate_frame_start := 0;

//R weight
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
edit8.text := s;
r_wei := strtofloat(edit8.Text);

//g weight
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
edit10.text := s;
g_wei := strtofloat(edit10.Text);

//b weight
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
edit9.text := s;
b_wei := strtofloat(edit9.Text);


//Moving Average window width
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
edit15.text := s;
moving_average_window_width := strtoint(edit15.Text);


//x11
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
x11 := strtoint(s);
x11_save := x11;


//y11
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
y11 := strtoint(s);
y11_save := y11;

//filtered data check box
readln(open_file,open_string);
l := length(open_string);
s:='';
c1 := 1;
repeat
 c1 := c1 + 1;
until (open_string[c1] = '>');
c1 := c1 + 1;
repeat
 s := s + open_string[c1];
 c1 := c1 + 1;
until (c1 > l);
if s= 'Y' then checkbox4.Checked := true
else checkbox4.Checked := false;


readln(open_file,open_string); //save_string := '#**#'+inttostr(moving_average_window_width);
 dt := 1000 / strtofloat(edit16.Text);
 //load file into buffer array
data_counter := 1;
max_data_count := max_data_count - moving_average_window_width - 1;

repeat
readln(open_file,open_string);
c1 := 1;
 chart_i := 0;

 chart_j := 0;

repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;
      s:='';

      repeat
      s := s + open_string[c1];
      c1 := c1 + 1;
      until (open_string[c1] = '#');
      c1 := c1 + 1;

      data := strtofloat(s);

      ecg_array[chart_index,data_counter] := data;
      ecg_filtered[chart_index,data_counter] := data;
      fir_scale := 1;

   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension);


data_counter := data_counter + 1;

until (data_counter >  max_data_count);
closefile(open_file);


// load image and draw points on canvas
s := file_path + 'f300.bmp';
label14.Caption := s;
image1.Picture.LoadFromFile(s);
mark_color := clblue;

for j := 0 to process_window_dimension do
begin
  for i := 0 to process_window_dimension do
  begin
  x := x11 + i * dis;
  y := y11 + j * dis;

    for m := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x+m , y] := mark_color;
       zoom_form.image1.canvas.pixels[x+m , y] := mark_color;
    end;

    for n := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x , y+n] := mark_color;
       zoom_form.image1.canvas.pixels[x , y+n] := mark_color;
    end;

  x_point[j*process_window_dimension_plus + i] := x;
  y_point[j*process_window_dimension_plus + i] := y;


  end;
end;



zoom_form.Image1.Picture := image1.Picture;

wizard_form.Image1.Picture := image1.Picture;


zoom_form.label3.Caption := inttostr(dis);
zoom_form.Label4.Caption := inttostr(x11);
zoom_form.Label5.Caption := inttostr(y11);
zoom_form.Label6.Caption := inttostr(process_window_dimension_plus);

iso_line_form.label1.Caption := inttostr(dis);
iso_line_form.Label2.Caption := inttostr(process_window_dimension_plus);


zoom_form.Show;
results_form.Close;
wizard_form.Close;

data_counter := 1;
block_no := 1;

data_counter := (block_no - 1) * max_data_count;
data_counter_start := data_counter;
data_counter_end := data_counter_start + max_data_count;

global_max := 0;
global_min := 0;

max_ecg_count := (process_window_dimension_plus*process_window_dimension_plus) - 1;

for i := 0 to max_ecg_count do
begin
  for j := data_counter_start to data_counter_end do
    if ecg_array[i,j] > global_max then global_max := ecg_array[i,j];
    if ecg_array[i,j] < global_min then global_min := ecg_array[i,j];


end;

label20.caption := 'Global Max: ' +formatfloat('#.###',global_max) + '   , Global Min: ' + formatfloat('#.###',global_min);
color_scale := max_ecg_count / global_max ;
amplitude := global_max;


 for chart_index := 0 to 1099 do
 begin
      randomize();
      r1 := random(255);
      r2 := random(255);
      r3 := random(255);
      cr := (r1 shl 16) + (r2 shl 8) + r3;
      chart1.Series[chart_index].SeriesColor := cr;

 end;

 
Showmessage(inttostr(max_data_count) + ' recordes has been loaded');




end;

end;

procedure TForm1.SaveProcessedData1Click(Sender: TObject);
begin
button24.Click;
end;

procedure TForm1.LoadProcessedData1Click(Sender: TObject);
begin
button25.Click;
end;

procedure TForm1.cv_iso_button_newClick(Sender: TObject);
begin
d := strtofloat (edit1.text);

data_counter := (block_no * max_data_count) - max_data_count + 5;

// reset arrays
chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      ecg_max_array[chart_index] := -1000;

      ecg_max_time[chart_index] := 0;
      ecg_min_time[chart_index] := 0;
      ecg_apd80_array[chart_index] := 0;
      ecg_apd80_time[chart_index] := 0;

      ecg_min_array[chart_index] := 1000;

   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);

for chart_i := 0 to 31 do
begin
  for chart_j := 0 to 31 do
  begin
    iso_line_form.phase_table.Cells[chart_i,chart_j] := 'N.A';
    iso_line_form.phase_difference_table.Cells[chart_i,chart_j] := 'N.A';
    iso_line_form.phase_difference_angle_table.Cells[chart_i,chart_j] := 'N.A';
    iso_line_form.cv_table.Cells[chart_i,chart_j] := 'N.A';
    iso_line_form.cv_angle_table.Cells[chart_i,chart_j] := 'N.A';


  end;
end;


// find Max , Min , Max_index for each ecg array
data_counter := (block_no * max_data_count) - max_data_count + 5;
repeat

chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      {
      if fir_show then data := (ecg_filtered[chart_index,data_counter] * fir_scale)
      else  data := ecg_array[chart_index,data_counter];
      }

      //always use filtered data
      data := (ecg_filtered[chart_index,data_counter] * fir_scale);

      if data > ecg_max_array[chart_index] then
      begin
      ecg_max_array[chart_index] := data;
      ecg_max_time[chart_index] := data_counter * dt;
      end;
      if data < ecg_min_array[chart_index] then
      begin
      ecg_min_array[chart_index] := data;
      ecg_min_time[chart_index] := data_counter * dt;

      end;


   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);

// chart1.Series[chart_index].SeriesColor := mark_color;

 data_counter := data_counter+1;



until ( data_counter > ((block_no * max_data_count) - binning_width) );


// calculate amplitude
chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      ecg_amp_array[chart_index] := ecg_max_array[chart_index] - ecg_min_array[chart_index];


      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);


//Find apd80 rising edge point for each ecg curve
// find Max , Min , Max_index for each ecg array
data_counter := (block_no * max_data_count) - max_data_count + 5;
repeat

chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      {
      if fir_show then data := (ecg_filtered[chart_index,data_counter] * fir_scale)
      else  data := ecg_array[chart_index,data_counter];
      }

      //always use filtered data
      data1 := (ecg_filtered[chart_index,data_counter] * fir_scale);
      data2 := (ecg_filtered[chart_index,data_counter+1] * fir_scale);
      apd80_line := ecg_max_array[chart_index] - 0.8*ecg_amp_array[chart_index];
      //check rising edge
      if (data1 < apd80_line) and (data2 >= apd80_line) then
      begin
      ecg_apd80_array[chart_index] := data1;
      ecg_apd80_time[chart_index] := data_counter * dt;
      end;


   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);

data_counter := data_counter+1;


until ( data_counter > ((block_no * max_data_count) - binning_width) );




if  Not apd80_cv_check_box.Checked then
begin
//plot each maximum on each MAP
chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      //ecg_max_array[chart_index] := data;
      data := ecg_max_array[chart_index];

      //ecg_max_time[chart_index] := data_counter * dt;
      //data_counter := trunc (ecg_max_time[chart_index] / dt);
      t_max_index := trunc (ecg_max_time[chart_index] / dt);

      y_offset := trunc(1.1*(process_window_dimension_plus - chart_j)*amplitude);

      x_offset := (chart_i*max_data_count) + t_max_index - data_counter_start;


      chart1.Series[1243].AddXY( x_offset , y_offset + data  );

      iso_line_form.phase_table.Cells[chart_i,chart_j] := inttostr(t_max_index);


   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);
end
else //if  Not apd80_cv_check_box.Checked then
begin
//plot each apd80 rising edge on each MAP
chart_i := 0;
chart_j := 0;
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i*process_window_dimension_plus) + chart_j;

      //ecg_max_array[chart_index] := data;
      data := ecg_apd80_array[chart_index];

      //ecg_max_time[chart_index] := data_counter * dt;
      //data_counter := trunc (ecg_max_time[chart_index] / dt);
      t_apd80 := trunc (ecg_apd80_time[chart_index] * 10) / 10 ;
      t_apd80_index := trunc (ecg_apd80_time[chart_index] / dt);
      y_offset := trunc(1.1*(process_window_dimension_plus - chart_j)*amplitude);

      x_offset := (chart_i*max_data_count) + t_apd80_index - data_counter_start;


      chart1.Series[1243].AddXY( x_offset , y_offset + data  );

      iso_line_form.phase_table.Cells[chart_i,chart_j] := floattostr(t_apd80);


   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension_plus);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension_plus);


//Calculate 8 phase difference for each point
// there is no data for outside window of (1,1) to (process_window_dimension,process_window_dimension)
chart_i := 1;
chart_j := 1;
angle_coefficient := sqrt(2) / 2; // 45 degree sin and cos
dif_amplitude_max := -1000;
dif_amplitude_min := 1000;

repeat

   chart_j := 1;

   repeat
      t_apd80_current := strtofloat(iso_line_form.phase_table.Cells[chart_i,chart_j]);

      t_apd80_point2 := strtofloat(iso_line_form.phase_table.Cells[chart_i+1,chart_j]);
      d1 := t_apd80_point2 - t_apd80_current;

      t_apd80_point2 := strtofloat(iso_line_form.phase_table.Cells[chart_i+1,chart_j-1]);
      d2 := t_apd80_point2 - t_apd80_current;

      t_apd80_point2 := strtofloat(iso_line_form.phase_table.Cells[chart_i,chart_j-1]);
      d3 := t_apd80_point2 - t_apd80_current;

      t_apd80_point2 := strtofloat(iso_line_form.phase_table.Cells[chart_i-1,chart_j-1]);
      d4 := t_apd80_point2 - t_apd80_current;

      t_apd80_point2 := strtofloat(iso_line_form.phase_table.Cells[chart_i-1,chart_j]);
      d5 := t_apd80_point2 - t_apd80_current;

      t_apd80_point2 := strtofloat(iso_line_form.phase_table.Cells[chart_i-1,chart_j+1]);
      d6 := t_apd80_point2 - t_apd80_current;

      t_apd80_point2 := strtofloat(iso_line_form.phase_table.Cells[chart_i,chart_j+1]);
      d7 := t_apd80_point2 - t_apd80_current;

      t_apd80_point2 := strtofloat(iso_line_form.phase_table.Cells[chart_i+1,chart_j+1]);
      d8 := t_apd80_point2 - t_apd80_current;

      dif_x := d1 + (d2*angle_coefficient) - (d3*angle_coefficient) - d5 - (d6*angle_coefficient) + (d8*angle_coefficient);
      dif_y := (d2*angle_coefficient) + d3 + (d4*angle_coefficient) - (d6*angle_coefficient) - d7 - (d8*angle_coefficient);

      if dif_x <> 0 then ux := (1000 / dif_x) * d
      else ux := 0;

      if dif_y <> 0 then uy := (1000 / dif_y) * d
      else uy := 0;

      dif_amplitude := sqrt(dif_x*dif_x + dif_y*dif_y);
      cv_amplitude := sqrt(ux*ux + uy*uy);

      if dif_amplitude > dif_amplitude_max then dif_amplitude_max := dif_amplitude;
      if dif_amplitude < dif_amplitude_min then dif_amplitude_min := dif_amplitude;

      if dif_x <> 0 then
      begin
      dif_angle := arctan(dif_y / dif_x) * (180/3.14)
      end
      else
      begin
      if dif_y > 0 then dif_angle := 90;
      if dif_y < 0 then dif_angle := -90;
      end;


      if ux <> 0 then
      begin
      cv_angle := arctan(uy / ux) * (180/3.14)
      end
      else
      begin
      if uy > 0 then cv_angle := 90;
      if uy < 0 then cv_angle := -90;
      end;

     // if dif_amplitude > max_amplitude then max_amplitude := dif_aplitude;

     iso_line_form.phase_difference_table.Cells[chart_i,chart_j] := floattostr(trunc(dif_amplitude*10)/10);
     iso_line_form.phase_difference_angle_table.Cells[chart_i,chart_j] := floattostr(trunc(dif_angle*10)/10);

     iso_line_form.CV_table.Cells[chart_i,chart_j] := floattostr(trunc(cv_amplitude*10)/10);
     iso_line_form.CV_angle_table.Cells[chart_i,chart_j] := floattostr(trunc(cv_angle*10)/10);

   chart_j := chart_j + 1;

   until (chart_j > process_window_dimension-1);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension-1);


//Plot Arrow Map
//plot conduction velocity arrow map (directions)
iso_line_form.Series1.XValues.DateTime:=False;
iso_line_form.Series1.Clear;
iso_line_form.arrowseries1.XValues.DateTime:=False;
iso_line_form.arrowseries1.Clear;

chart_i := 1;
repeat

   chart_j := 1;

   repeat

      cv_angle := strtofloat(iso_line_form.cv_angle_table.Cells[chart_i,chart_j]);
      ux := cos(cv_angle * 3.14 / 180);
      uy := sin(cv_angle * 3.14 / 180);
      iso_line_form.Series1.AddArrow(chart_i,process_window_dimension - chart_j,chart_i+ux,process_window_dimension - chart_j + uy);


      dif_angle := strtofloat(iso_line_form.phase_difference_angle_table.Cells[chart_i,chart_j]);
      dif_x := cos(dif_angle * 3.14 / 180);
      dif_y := sin(dif_angle * 3.14 / 180);
      iso_line_form.arrowseries1.AddArrow(chart_i,process_window_dimension - chart_j,chart_i+dif_x,process_window_dimension - chart_j + dif_y);



      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension-1);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension-1);

 

end;



// Plot results Conduction Amplitude

//Fixed Color Scale
//dif_amplitude_min := 30;
//dif_amplitude_max := 1000;

// scale on right
j := 0;
repeat

r := trunc(j);
g := 0;
b := 255-r;
i := 0;
repeat
 iso_line_form.Image2.Canvas.Pixels[i,j] := rgb(r,g,b);
 i := i + 1;
until (i > 33);
 j := j + 1;
until (j > 255);




//plot temp image
//conduction_velocity_max := 20;

// conduction velocity = 1 / phase difference in ms
cv_max := (1/dif_amplitude_min) * 1000;
cv_min := (1/dif_amplitude_max) * 1000;


chart_i := 0;
chart_j := 0;
//clear temp image first
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i * process_window_dimension_plus) + chart_j;

      image3.Canvas.Pixels[chart_i,chart_j] := 0;

      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension);

//brush pixels on temp image
chart_i := 1;
chart_j := 1;
repeat

   chart_j := 1;

   repeat
        data :=strtofloat(iso_line_form.cv_table.Cells[chart_i,chart_j]);
        data_scale := (255 / (cv_max - cv_min)) * (data - cv_min);
        r := 255 - trunc(data_scale);
        g := 0;
        b := trunc(data_scale);
        colorvalue := rgb(r,g,b);
        if ((chart_i <> 0) and (chart_j <> 0) and (chart_i <> process_window_dimension) and (chart_i <> process_window_dimension)) then image3.Canvas.Pixels[chart_i,chart_j] := colorvalue;
      //  end;

      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension-1);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension-1);



// plot main image on iso line form

pixel_width := trunc(iso_line_form.image1.Width / process_window_dimension_plus);

for i := 0 to process_window_dimension do
begin
for j := 0 to process_window_dimension do
begin

     colorvalue  :=  image3.Canvas.Pixels[i,j];
     for m := 0 to pixel_width-1 do
       for n := 0 to pixel_width-1 do
         iso_line_form.image1.Canvas.Pixels[i*pixel_width+m,j*pixel_width+n] := colorvalue;


end;
end;



// Plot results Conduction Delay
// scale on right
j := 0;
repeat

r := trunc(j);
g := 0;
b := 255-r;
i := 0;
repeat
 iso_line_form.Image4.Canvas.Pixels[i,j] := rgb(r,g,b);
 i := i + 1;
until (i > 33);
 j := j + 1;
until (j > 255);




//plot temp image
chart_i := 0;
chart_j := 0;
//clear temp image first
repeat

   chart_j := 0;

   repeat
      chart_index := (chart_i * process_window_dimension_plus) + chart_j;

      image3.Canvas.Pixels[chart_i,chart_j] := 0;

      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension);

//brush pixels on temp image
chart_i := 1;
chart_j := 1;
repeat

   chart_j := 1;

   repeat
        data :=strtofloat(iso_line_form.phase_difference_table.Cells[chart_i,chart_j]);
        data_scale := (255 / (dif_amplitude_max-dif_amplitude_min)) * (data - dif_amplitude_min);
        r := 255 - trunc(data_scale);
        g := 0;
        b := trunc(data_scale);
        colorvalue := rgb(r,g,b);
        if ((chart_i <> 0) and (chart_j <> 0) and (chart_i <> process_window_dimension) and (chart_i <> process_window_dimension)) then image3.Canvas.Pixels[chart_i,chart_j] := colorvalue;
      //  end;

      chart_j := chart_j + 1;

   until (chart_j > process_window_dimension-1);

 chart_i := chart_i + 1;

until (chart_i > process_window_dimension-1);



// plot main image on iso line form

pixel_width := trunc(iso_line_form.image1.Width / process_window_dimension_plus);

for i := 0 to process_window_dimension do
begin
for j := 0 to process_window_dimension do
begin

     colorvalue  :=  image3.Canvas.Pixels[i,j];
     for m := 0 to pixel_width-1 do
       for n := 0 to pixel_width-1 do
         iso_line_form.image3.Canvas.Pixels[i*pixel_width+m,j*pixel_width+n] := colorvalue;


end;
end;




iso_line_form.show;
iso_line_form.Caption := 'Conduction Velocity and Conduction Delay Iso-Line Map';
iso_line_form.cv_min_label.Caption := floattostr(trunc(cv_min*10)/10);
iso_line_form.cv_max_label.Caption := floattostr(trunc(cv_max*10)/10);
iso_line_form.dif_min_label.Caption := floattostr(trunc(dif_amplitude_min*10)/10);
iso_line_form.dif_max_label.Caption := floattostr(trunc(dif_amplitude_max*10)/10);



end;

procedure TForm1.Button26Click(Sender: TObject);
begin
button26.Caption := inttostr(chart1.SeriesCount);
end;

end.
