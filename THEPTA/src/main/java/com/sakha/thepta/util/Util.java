package com.sakha.thepta.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.stereotype.Component;

import com.sakha.thepta.model.UserModel;

@Component
public class Util {

	public String convertToMD5(String content) {

		String md5Content = "";
		try {

			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(content.getBytes());
			byte[] bytes = md.digest();
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < bytes.length; i++) {
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}
			md5Content = sb.toString();
		} catch (NullPointerException e1) {
			e1.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return md5Content;
	}

	public String getUserFullName(UserModel userModel) {

		if (userModel.getfName() != null && userModel.getlName() != null) {
			return userModel.getfName() + " " + userModel.getlName();
		} else if (userModel.getfName() != null) {
			return userModel.getfName();
		} else {
			return userModel.getlName();
		}
	}
}
