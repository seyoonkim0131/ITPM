package util;

import java.util.ArrayList;
import java.util.List;
/**
 * Excel 파일을 읽을 때 옵션을 설정한다.
 * @author Seyoon Kim
 * @version 1.0
 */
public class ExcelReadOption {

	private String filePath; //파일 경로
	private List<String> outputColumns; //추출할 컬럼명
	private int startRow; //추출을 시작할 행 번호
	
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public List<String> getOutputColumns() {
		List<String> temp = new ArrayList<String>();
		temp.addAll(outputColumns);
		return temp;
	}
	public void setOutputColumns(List<String> outputColumns) {
		List<String> temp = new ArrayList<String>();
		temp.addAll(outputColumns);
		this.outputColumns = temp;
	}
	public void setOutputColumns(String ... outputColumns) {
		if(this.outputColumns == null) {
			this.outputColumns = new ArrayList<String>();
		}
		for (String outputColumn : outputColumns) {
			this.outputColumns.add(outputColumn);
		}
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
}
