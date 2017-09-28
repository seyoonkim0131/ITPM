<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>

<%
    request.setCharacterEncoding("UTF-8");
    // 파일 업로드된 경로
    String savePath = "/home/ubuntu/public_html/ITPM/attach";
    //String savePath = System.getProperty("user.home")+"/webapps/ITPM/attach"; //운영
    //String savePath = System.getProperty("user.dir")+"/webapps/ITPM/attach"; //운영
    //String savePath = System.getProperty("user.home")+"/git/ITPM/ITPM/WebContent/attach"; //개발
    // 서버에 실제 저장된 파일명
    String filename = String.valueOf(request.getAttribute("fileName"));//${requestScope.fileName};
    // 실제 내보낼 파일명
    String orgfilename = filename;
    InputStream in = null;
    OutputStream os = null;
    File file = null;
    boolean skip = false;
    String client = "";
    out.clear();
    out = pageContext.pushBody();
    try{
        // 파일을 읽어 스트림에 담기
        try{
            file = new File(savePath, filename);
            in = new FileInputStream(file);
        }catch(FileNotFoundException fe){
            skip = true;
        }
        client = request.getHeader("User-Agent");
        // 파일 다운로드 헤더 지정
        response.reset() ;
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Description", "JSP Generated Data");
        if(!skip){
            // IE
            if(client.indexOf("MSIE") != -1){
                response.setHeader ("Content-Disposition", "attachment; filename="+new String(orgfilename.getBytes("KSC5601"),"ISO8859_1"));
            }else{
                // 한글 파일명 처리
                orgfilename = new String(orgfilename.getBytes("utf-8"),"iso-8859-1");
                response.setHeader("Content-Disposition", "attachment; filename=\"" + orgfilename + "\"");
                response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
            } 
            response.setHeader ("Content-Length", ""+file.length() );
            os = response.getOutputStream();
            byte b[] = new byte[(int)file.length()];
            int leng = 0;
             
            while( (leng = in.read(b)) > 0 ){
                os.write(b,0,leng);
            }
        }else{
            response.setContentType("text/html;charset=UTF-8");
            out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");
        }
        in.close();
        os.flush();
        os.close();
    }catch(Exception e){
      e.printStackTrace();
    }
%>