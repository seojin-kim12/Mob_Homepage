package jspbook.mob;

import java.io.*;
import java.util.*;
import javax.servlet.http.*;
import java.sql.Date;

public class SessionChecker{
        private String ip="";
        public void setSession(HttpSession session, String ip){
 // 리스너 객체를 생성해서 이것도 세션에 같이 담는다.  리스너 라는 이름으로...
                this.ip = ip;
        session.setAttribute("listener", new CustomBindingListener(ip));
                
    }
}
//                                                     여기서    구현했습니다..

class CustomBindingListener implements HttpSessionBindingListener {
        String num=null;
        String ip = "";
        String read_ip = null;//현재 접속자 아이피

        public CustomBindingListener(String ip){
                this.ip=ip;
        }
        public void valueBound(HttpSessionBindingEvent event) {
        // 세션이 생겼을 때 할 내용
        
        long t = System.currentTimeMillis();
        Date date = new Date(t);
        String chdate = date.toString();
        chdate = chdate.replace('-','/');
        String today_count=null;
    String today = null;
    String today_num = null;//오늘 방문자 카운트
        String total_num = null;//총 카운트
        
        Vector v = new Vector();//현재 접속자 아이피 체크
          try{
                        String dir = System.getProperty("user.dir")+"/ApacheGroup/ePims/admin/";//카운트 파일들을 저장 하는 경로 설정(절대경로)
                        String filename = dir+"count.txt";
                        String filename2 = dir+"ip_count.txt";
                        String filename3 = dir+"today_count.txt";
                        File file = new File(filename);
                        File file2 = new File(filename2);
                        File file3 = new File(filename3);
                        if(!file.exists()){
                                file.createNewFile();
                        }
                        if(!file2.exists()){
                                file2.createNewFile();
                        }
                        if(!file3.exists()){
                                file3.createNewFile();
                        }
                        FileReader fr = new FileReader(filename);
                        BufferedReader br = new BufferedReader(fr);
                        FileReader fr2 = new FileReader(filename2);
                        BufferedReader br2 = new BufferedReader(fr2);
                        FileReader fr3 = new FileReader(filename3);
                        BufferedReader br3 = new BufferedReader(fr3);
                
                        num = br.readLine();//총 카운트 값 읽어오기
                        while((read_ip= br2.readLine())!=null){
                                read_ip = read_ip.trim();
                                v.addElement(read_ip);
                        }//현재 접속자 아이피 가져오기
                        today_count = br3.readLine();//오늘 방문자 카운트 가져오기
                        br.close();
                        br2.close();
                        br3.close();
                        //총방문자 초기화
                        if(num==null){
                                FileWriter fw = new FileWriter(filename);
                                fw.write("0");
                                num="0";
                                fw.close();
                        }
                        //현재접속자 초기화
                        if(read_ip==null){
                                String start = "127.0.0.1";
                                FileWriter fw = new FileWriter(filename2);
                                BufferedWriter bw = new BufferedWriter(fw);
                                bw.write(start,0,start.length());
                                bw.close();
                                fw.close();
                        }
                        //오늘 방문자 초기화
                        if(today_count==null){
                                FileWriter fw3 = new FileWriter(filename3);
                                fw3.write(chdate+",1");
                                today_num="0";
                                fw3.close();
                        }
                        
                        //총 카운트 입력
                        int now = (Integer.parseInt(num))+1;
                        Integer new_num = new Integer(now);
                        num = new_num.toString();
                        FileWriter fw = new FileWriter(filename);
                        fw.write(num);
                        fw.close();
                        
                        //현재 접속자 아이피 입력
                        FileWriter fw2 = new FileWriter(filename2);
                        BufferedWriter bw2 = new BufferedWriter(fw2);
                        boolean match=false;
                        for (int i=0; i<v.size(); i++)
                        {
                                String read = (String)v.elementAt(i);
                                if(read.equals(ip)){
                                        v.setElementAt(ip,i);//아이피 같은지 비교 후 업데이트
                                        match = true;
                                }

                        }
                        if(!match){
                                v.addElement(ip);
                        }
                        for(int j=0; j<v.size(); j++){
                                String wr = (String)v.elementAt(j);
                                if(j!=0)
                                bw2.newLine();
                                bw2.write(wr,0,wr.length());
                        }
                        bw2.close();
                        fw2.close();

                        //오늘 방문자 입력
                        if(today_count!=null){
                                String[] today_Cnvt = new String[3];
                                int idx = 0;
                                StringTokenizer strToken = new StringTokenizer(today_count, ",", true);
                                while(strToken.hasMoreTokens()) {
                                                        today = strToken.nextToken();
                                                        today_Cnvt[idx] = today;
                                                        idx++;
                                }
                                
                                if(today_Cnvt[0].equals(chdate)){
                                        int today_num2 = (Integer.parseInt(today_Cnvt[2]))+1;
                                        
                                        Integer new_today = new Integer(today_num2);
                                        today_num = new_today.toString();

                                        FileWriter fw3 = new FileWriter(filename3);
                                        fw3.write(chdate+","+today_num);
                                        fw3.close();
                                }else{
                                        today_num = "1";
                                        FileWriter fw3 = new FileWriter(filename3);
                                        fw3.write(chdate+","+today_num);
                                        fw3.close();
                                }
                        }
                }catch(Exception e){System.out.println(e.getMessage());}        
        }
                

    public void valueUnbound(HttpSessionBindingEvent event) {
 // 세션이 종료되었을 때
          Vector v = new Vector();
          try{
                        String dir = System.getProperty("user.dir")+"/ApacheGroup/ePims/admin/";
                        String filename = dir+"ip_count.txt";

                        FileReader fr = new FileReader(filename);
                        BufferedReader br = new BufferedReader(fr);

                        while((read_ip= br.readLine())!=null){
                                read_ip = read_ip.trim();
                                v.addElement(read_ip);
                        }
                        br.close();

                        FileWriter fw = new FileWriter(filename);
                        BufferedWriter bw = new BufferedWriter(fw);
                        for (int i=0; i<v.size(); i++)
                        {
                                String read = (String)v.elementAt(i);
                                if(read.equals(ip)){
                                        v.removeElementAt(i);
                                }
                        }
                        
                        for(int j=0; j<v.size(); j++){
                                String wr = (String)v.elementAt(j);
                                if(j!=0)
                                bw.newLine();
                                bw.write(wr,0,wr.length());
                        }
                        bw.close();
                        fw.close();
                }catch(Exception e){System.out.println(e.getMessage());}
        }
}