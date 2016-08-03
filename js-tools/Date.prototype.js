// ����ܲ��������� csdn �� Meizz д�ģ� 
// ��Date����չ���� Date ת��Ϊָ����ʽ��String   
// ��(M)����(d)��Сʱ(h)����(m)����(s)������(q) ������ 1-2 ��ռλ����   
// ��(y)������ 1-4 ��ռλ��������(S)ֻ���� 1 ��ռλ��(�� 1-3 λ������)   
// ���ӣ�   
// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423   
// (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18   
Date.prototype.Format1 = function(fmt) { //author: meizz   
  var o = {   
    "M+" : this.getMonth()+1,                 //�·�   
    "d+" : this.getDate(),                    //��   
    "h+" : this.getHours(),                   //Сʱ   
    "m+" : this.getMinutes(),                 //��   
    "s+" : this.getSeconds(),                 //��   
    "q+" : Math.floor((this.getMonth()+3)/3), //����   
    "S"  : this.getMilliseconds()             //����   
  };   
  if(/(y+)/.test(fmt))   
    fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
  for(var k in o)   
    if(new RegExp("("+ k +")").test(fmt))   
  fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
  return fmt;   
}


        
/**       
 <mce:script language="<a href="http://lib.csdn.net/base/18" class='replace_word' title="JavaScript֪ʶ��" 
target='_blank' style='color:#df3434; font-weight:bold;'>JavaScript</a>" type="text/javascript"><!--  

var date = new Date();        
window.alert(date.pattern("yyyy-MM-dd hh:mm:ss"));  
// --></mce:script>      



 * ��Date����չ���� Date ת��Ϊָ����ʽ��String       
 * ��(M)����(d)��12Сʱ(h)��24Сʱ(H)����(m)����(s)����(E)������(q) ������ 1-2 ��ռλ��       
 * ��(y)������ 1-4 ��ռλ��������(S)ֻ���� 1 ��ռλ��(�� 1-3 λ������)       
 * eg:       
 * (new Date()).pattern("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423       
 * (new Date()).pattern("yyyy-MM-dd E HH:mm:ss") ==> 2009-03-10 �� 20:09:04       
 * (new Date()).pattern("yyyy-MM-dd EE hh:mm:ss") ==> 2009-03-10 �ܶ� 08:09:04       
 * (new Date()).pattern("yyyy-MM-dd EEE hh:mm:ss") ==> 2009-03-10 ���ڶ� 08:09:04       
 * (new Date()).pattern("yyyy-M-d h:m:s.S") ==> 2006-7-2 8:9:4.18       
 */          
Date.prototype.pattern = function(fmt) {           
    var o = {           
    "M+" : this.getMonth()+1, //�·�           
    "d+" : this.getDate(), //��           
    "h+" : this.getHours()%12 == 0 ? 12 : this.getHours()%12, //Сʱ           
    "H+" : this.getHours(), //Сʱ           
    "m+" : this.getMinutes(), //��           
    "s+" : this.getSeconds(), //��           
    "q+" : Math.floor((this.getMonth()+3)/3), //����           
    "S" : this.getMilliseconds() //����           
    };           
    var week = {           
    "0" : "/u65e5",           
    "1" : "/u4e00",           
    "2" : "/u4e8c",           
    "3" : "/u4e09",           
    "4" : "/u56db",           
    "5" : "/u4e94",           
    "6" : "/u516d"          
    };           
    if(/(y+)/.test(fmt)){           
        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));           
    }           
    if(/(E+)/.test(fmt)){           
        fmt=fmt.replace(RegExp.$1, ((RegExp.$1.length>1) ? (RegExp.$1.length>2 ? "/u661f/u671f" : "/u5468") : "")+week[this.getDay()+""]);           
    }           
    for(var k in o){           
        if(new RegExp("("+ k +")").test(fmt)){           
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));           
        }           
    }           
    return fmt;           
}         
       
Date.prototype.format3 = function(mask) {      
     
    var d = this;      
     
    var zeroize = function (value, length) {      
     
        if (!length) length = 2;      
     
        value = String(value);      
     
        for (var i = 0, zeros = ''; i < (length - value.length); i++) {      
     
            zeros += '0';      
     
        }      
     
        return zeros + value;      
     
    };        
     
    return mask.replace(/"[^"]*"|'[^']*'|/b(?:d{1,4}|m{1,4}|yy(?:yy)?|([hHMstT])/1?|[lLZ])/b/g, function($0) {      
     
        switch($0) {      
     
            case 'd':   return d.getDate();      
     
            case 'dd':  return zeroize(d.getDate());      
     
            case 'ddd': return ['Sun','Mon','Tue','Wed','Thr','Fri','Sat'][d.getDay()];      
     
            case 'dddd':    return ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'][d.getDay()];      
     
            case 'M':   return d.getMonth() + 1;      
     
            case 'MM':  return zeroize(d.getMonth() + 1);      
     
            case 'MMM': return ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'][d.getMonth()];      
     
            case 'MMMM':    return ['January','February','March','April','May','June','July','August','September','October','November','December'][d.getMonth()];      
     
            case 'yy':  return String(d.getFullYear()).substr(2);      
     
            case 'yyyy':    return d.getFullYear();      
     
            case 'h':   return d.getHours() % 12 || 12;      
     
            case 'hh':  return zeroize(d.getHours() % 12 || 12);      
     
            case 'H':   return d.getHours();      
     
            case 'HH':  return zeroize(d.getHours());      
     
            case 'm':   return d.getMinutes();      
     
            case 'mm':  return zeroize(d.getMinutes());      
     
            case 's':   return d.getSeconds();      
     
            case 'ss':  return zeroize(d.getSeconds());      
     
            case 'l':   return zeroize(d.getMilliseconds(), 3);      
     
            case 'L':   var m = d.getMilliseconds();      
     
                    if (m > 99) m = Math.round(m / 10);      
     
                    return zeroize(m);      
     
            case 'tt':  return d.getHours() < 12 ? 'am' : 'pm';      
     
            case 'TT':  return d.getHours() < 12 ? 'AM' : 'PM';      
     
            case 'Z':   return d.toUTCString().match(/[A-Z]+$/);      
     
            // Return quoted strings with the surrounding quotes removed      
     
            default:    return $0.substr(1, $0.length - 2);      
     
        }      
     
    });      
     
};    


