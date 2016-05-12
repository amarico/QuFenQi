package com.fenqi.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.fenqi.manager.ProductMgr;
import com.fenqi.po.Characters;
import com.fenqi.po.ProductInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport{
	//上传文件存放路径   
    private final static String UPLOADDIR = "/upload/picture";
    public static String[] DIR = new String[9];
    //上传文件集合   
    private List<File> file;   
    //上传文件名集合   
    private List<String> fileFileName;   
    //上传文件内容类型集合   
    private List<String> fileContentType;  
    private ProductMgr productMgrImpl;
    
    public void setProductMgrImpl(ProductMgr productMgrImpl) {
		this.productMgrImpl = productMgrImpl;
	}

	public List<File> getFile() {   
        return file;   
    }   

    public void setFile(List<File> file) {   
        this.file = file;   
    }   

   public List<String> getFileFileName() {   
       return fileFileName;   
   }   

    public void setFileFileName(List<String> fileFileName) {   
        this.fileFileName = fileFileName;   
    }   

    public List<String> getFileContentType() {   
        return fileContentType;   
    }   

    public void setFileContentType(List<String> fileContentType) {   
        this.fileContentType = fileContentType;   
    }   

    public String upload() throws Exception {
    	Map  session = ActionContext.getContext().getSession();

        for (int i = 0; i < file.size(); i++) {   
            //循环上传每个文件   
            uploadFile(i);   
        }
        String typeall=session.get("all").toString();
        String typedetail=session.get("detail").toString();
        Characters ch=(Characters) session.get("chacter");
        ProductInfo product=(ProductInfo) session.get("pro");
        this.productMgrImpl.addProduct(typeall, typedetail, ch, product);
        return "success";   
    }   
    private void uploadFile(int i) throws Exception {   
            InputStream in = new FileInputStream(file.get(i));   
            String dir = ServletActionContext.getServletContext().getRealPath(UPLOADDIR);
            String fileName=this.getFileFileName().get(i);  
            File uploadFile = new File(dir, fileName);   
            OutputStream out = new FileOutputStream(uploadFile);   
            byte[] buffer = new byte[1024 * 1024];   
            int length;   
            while ((length = in.read(buffer)) > 0) {   
            	out.write(buffer, 0, length);   
            }   
            DIR[i] = "/QuFenQi/upload/picture/" + fileName;
            in.close();   
            out.close();    
    }   
}

