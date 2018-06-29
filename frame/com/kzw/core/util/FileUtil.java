package com.kzw.core.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class FileUtil {
	
	private static Log logger=LogFactory.getLog(FileUtil.class);
	
	public static String generateFilename(String originalFilename){
		
		SimpleDateFormat dirSdf=new SimpleDateFormat("yyyyMM");
		String filePre=dirSdf.format(new Date());
		
        String fileExt="";
        //返回最右边字符串的索引
        int lastIndex=originalFilename.lastIndexOf('.');
        //取得文件的扩展名
        if(lastIndex!=-1){
        	fileExt=originalFilename.substring(lastIndex);
        }
        //自动生成一串数字
        String filename=filePre+"/"+UUIDGenerator.getUUID()+fileExt;
        
        return filename;
	}
	
	/**
	 * 把数据写至文件中
	 * @param filePath
	 * @param data
	 */
	public static void writeFile(String filePath,String data){
		FileOutputStream fos = null;
		OutputStreamWriter writer=null;
		try {
			fos = new FileOutputStream(new File(filePath));
			writer=new OutputStreamWriter(fos, "UTF-8");			
			writer.write(data);
		} catch (Exception ex) {
			logger.error(ex.getMessage());
		} finally {
			try {
				if(writer!=null){
					writer.close();
				}
				if (fos != null){
					fos.close();
				}
			} catch (Exception e) {
			}
		}		
	}
	
	/**
	 * 读取文件内容
	 * @param filePath
	 * @return
	 */
	public static String readFile(String filePath){
		 StringBuffer buffer = new StringBuffer();
		// 读出这个文件的内容
		try{
			File file = new File(filePath);
		    FileInputStream fis = null;
		    BufferedReader breader=null;
		    try {
		      fis = new FileInputStream(file);
		      InputStreamReader isReader=new InputStreamReader(fis,"UTF-8");
		      breader=new BufferedReader(isReader);
		      String line;
		      while((line=breader.readLine())!=null) {
		        buffer.append(line);
		        buffer.append("\r\n");
		      }
		      breader.close();
		      isReader.close();
		      fis.close();
		      
		    } catch (FileNotFoundException e) {
		      logger.error(e.getMessage());
		    } catch (IOException e) {
		    	logger.error(e.getMessage());
		    }
		}catch(Exception e){
			logger.error(e.getMessage());
		}
		return buffer.toString();
	}
	public static void main(String[] args) {
		String picName = "u=3371599172,564662749&fm=214&gp=0.jpg";
		int picNameLength = picName.lastIndexOf(".");
		if(picNameLength!=-1){
			String picNameSub = picName.substring(picNameLength);
			String uuid = UUIDGenerator.getUUID();
			System.out.println(picNameSub);
			System.out.println("uuid=="+uuid);
		}
	}
}
