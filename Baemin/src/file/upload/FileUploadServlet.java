package file.upload;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.Boss;
import model.FoodHome;
import mybatis.service.ServiceBossJoin;


public class FileUploadServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");

		String contentType = req.getContentType();
		if (contentType != null
				&& contentType.toLowerCase().startsWith("multipart/")) {
			PdsItem uploadedItem = saveUploadFile(req);
			req.setAttribute("uploadedItem", uploadedItem);
			RequestDispatcher dispatcher = req
					.getRequestDispatcher("/boss/uploaded.jsp");
//			dispatcher.forward(req, resp);
		} else {
			RequestDispatcher dispatcher = req
					.getRequestDispatcher("/09_upload_class/2_pds/invalid.jsp");
//			dispatcher.forward(req, resp);
		} 
	}

	private PdsItem saveUploadFile(HttpServletRequest req) throws IOException,
			ServletException {
		
		FoodHome foodHome = (FoodHome)req.getAttribute("foodHome");
//		Part descPart = req.getPart("description");
//		String description = readParCameterValue(descPart);
//		Part filePart = req.getPart("file");
		Part filePart = (Part) req.getAttribute("filePart");
		String fileName = getFileName(filePart);
		String realPath = FileSaveHelper.save("C:\\JavaClass\\web_workspace\\Baemin\\WebContent\\FoodHome\\",
				filePart.getInputStream());

		PdsItem addRequest = new PdsItem();
		addRequest.setFileName(fileName);
		addRequest.setFileSize(filePart.getSize());
//		addRequest.setDescription(description);
		addRequest.setRealPath(realPath);
		
		foodHome.setfImg(realPath);
		PdsItem pdsItem = new PdsItem();
//		pdsItem.setId(ServiceBossJoin.getInstance().insertBossJoin((Boss)req.getAttribute("boss"), foodHome));
		return pdsItem;
	}

	private String getFileName(Part part) throws UnsupportedEncodingException {
		for (String cd : part.getHeader("Content-Disposition").split(";")) {
			if (cd.trim().startsWith("filename")) {
				return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}

	private String readParameterValue(Part part) throws IOException {
		InputStreamReader reader = new InputStreamReader(part.getInputStream(),"euc-kr");
		char[] data = new char[512];
		int len = -1;
		StringBuilder builder = new StringBuilder();
		while ((len = reader.read(data)) != -1) {
			builder.append(data, 0, len);
		}
		return builder.toString();
	}

}
