package subject.process;

import java.util.ArrayList;
import java.util.regex.Pattern;
import subject.data.*;

public class StringProcessor {
	public StringProcessor() {
		// null
	}
	
	public ArrayList<SubjectCode> extractSubjectCode(AdmissionYear AdmYear, String content) {
		SubjectCode SubjectCode = null;
		ArrayList<SubjectCode> sbjcodelist = new ArrayList<SubjectCode>();
		
		try {
			content = content.replace("\t", " ");
			content = content.replace("\n", " ");
			String[] splitcontent = content.split(" ");
			
			AdmYear.setAdmissionYear(splitcontent[0].substring(0, 4));
			
			for(int i=0; i<splitcontent.length; i++) {
				if(Pattern.matches("^[A-Z]{3}[0-9]{5}$", splitcontent[i])) {
					SubjectCode = new SubjectCode();
					SubjectCode.setSubjectCode(splitcontent[i]);
					sbjcodelist.add(SubjectCode);
				}
			}
		} catch(Exception exception) {
			System.out.println(exception);
		}
		
		return sbjcodelist;
	}
}