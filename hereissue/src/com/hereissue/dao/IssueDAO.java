package com.hereissue.dao;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.hereissue.dto.IssueDTO;



public class IssueDAO {
	
	public ArrayList<String> keywordCrawling(){
		ArrayList<String> list = new ArrayList<>();
		
		try {
			Document naver_search= Jsoup.connect("https://www.naver.com").get();
			
			Elements news_url = naver_search.select(".ah_a>span:last-child");
			
			int num =0;
			for (Element element : news_url) {
				
				num++;
				if(num <=20) {
					String title = element.text();
					list.add(title);
				
				}else {
					break;
				}
			}
		
		}catch(Exception e) {
			e.printStackTrace();
			
		} finally {
			
		}
		
		return list;
	}
	
	
	

}
