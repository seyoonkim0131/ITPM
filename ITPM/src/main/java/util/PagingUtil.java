package util;

import java.util.Map;

public class PagingUtil {
	
	private static final int countPerPage = 10;
	private static final int unitPage = 10;
	
	/* 페이지 정보 셋팅 */
	public static Map setPageInfo(Map reqParam, int defaultCountPerPage) {
		int pageNo = Integer.parseInt(reqParam.get("pageNo").toString());
		int countPerPage = Integer.parseInt(reqParam.get("countPerPage").toString());
		//countPerPage = countPerPage < 100 ? countPerPage : 100; //최대 100개로 제한 ..?
		int first = ((pageNo - 1) * countPerPage) + 1, last = first + countPerPage - 1;
		reqParam.put("countPerPage", countPerPage);
		reqParam.put("first", first);
		reqParam.put("last", last);
		System.out.println("setPageInfo ::: " + reqParam);
		return reqParam;
	}
	
	public static Map getPageObject(int totalCount, int currentPageNo) {
		return getPageObject(totalCount, currentPageNo, 10);
	}
	
	public static Map getPageObject(int totalCount, int currentPageNo, int countPerPage) {
		return getPageObject(totalCount, currentPageNo, countPerPage, 10);
	}
	
	public static Map getPageObject(int totalCount, int currentPageNo, int countPerPage, int unitPage) {
		int currPage = currentPageNo;
		int unitCount = 100;
		boolean isFirst = false;
		if(totalCount == 0) {
			countPerPage = unitCount;
		} else if (totalCount < countPerPage) {
			countPerPage = totalCount / unitCount * unitCount;
			if(totalCount % unitCount > 0) {
				countPerPage += unitPage;
			}
		}
		int totalPage = getMaxNum(totalCount, countPerPage);
		if(totalPage < currPage) {
			currPage = totalPage;
		}
		int currStartCount;
		int currEndCount;
		if(currPage != 1) {
			currEndCount = currPage * countPerPage;
			currStartCount = currEndCount - countPerPage;
		} else {
			currEndCount = countPerPage;
			currStartCount = 0;
		}
		if(currEndCount > totalCount) {
			currEndCount = totalCount;
		}
		int currStartPage;
		int currEndPage;
		if(totalPage <= unitPage) {
			currEndPage = totalPage;
			currStartPage = 1;
		} else {
			currEndPage = (currPage - 1) / unitPage * unitPage + unitPage;
			currStartPage = currEndPage - unitPage + 1;
		}
		if(currEndPage > totalPage) {
			currEndPage = totalPage;
		}
		int prePage;
		boolean prePageIs;
		if(currStartPage != 1) {
			prePageIs = true;
			prePage = currStartPage - 1;
		} else {
			prePageIs = false;
			prePage = 0;
		}
		int nextPage;
		boolean nextPageIs;
		if(currEndPage != totalPage) {
			nextPageIs = true;
			nextPage = currEndPage + 1;
		} else {
			nextPageIs = false;
			nextPage = 0;
		}
		Map tempJSON = new java.util.HashMap();
		try {
			tempJSON.put("currPage", Integer.valueOf(currPage));
			tempJSON.put("unitPage", Integer.valueOf(unitPage));
			tempJSON.put("prePage", Integer.valueOf(prePage));
			tempJSON.put("prePage_is", Boolean.valueOf(prePageIs));
			tempJSON.put("nextPage", Integer.valueOf(nextPage));
			tempJSON.put("nextPage_is", Boolean.valueOf(nextPageIs));
			tempJSON.put("currStartPage", Integer.valueOf(currStartPage));
			tempJSON.put("currEndPage", Integer.valueOf(currEndPage));
			tempJSON.put("totalCount", Integer.valueOf(totalCount));
			tempJSON.put("totalPage", Integer.valueOf(totalPage));
		} catch (Exception localException) {
		}
		return tempJSON;
	}
	private static int getMaxNum(int allPage, int listNum) {
		if(allPage % listNum == 0) {
			return allPage / listNum;
		}
		return allPage / listNum + 1;
	}
}
