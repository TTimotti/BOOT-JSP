package timkim.projects.demo.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	private static final Logger log = LoggerFactory.getLogger(MainController.class);
	
	@GetMapping({"/", "/index"})
	public String main() {
		log.info("Hello, World!");
		
		return "index";
	}

	
	public static void main(String[] args) {
		byte[] result = null;
		HttpURLConnection conn = null;
		try {
			URL url = new URL("https://shine.snu.ac.kr/adm/findWebPsnlBasicPhtp.action?dmndKey=WjAwMTMxNA==");
			conn = (HttpURLConnection)url.openConnection();
			conn.setRequestProperty("Referer", "https://scard1.snu.ac.kr/");

			BufferedImage photo = ImageIO.read(conn.getInputStream());
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			ImageIO.write(photo, "png", baos);
			result = baos.toByteArray();
			System.out.println("1");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
