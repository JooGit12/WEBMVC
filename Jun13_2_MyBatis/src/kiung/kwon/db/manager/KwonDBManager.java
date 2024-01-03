package kiung.kwon.db.manager;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// 뭔 작업하나 할때마다 DB연결해서 작업하고 끊고
// DB연결할때마다 SqlSessionFactory를 새로 만드나?
// => SqlSessionFactory는 한번만 만들어지는게 맞다

public class KwonDBManager {
	private SqlSessionFactory ssf;
	
	private static final KwonDBManager KDBM = new KwonDBManager();
	private KwonDBManager() {
	}
	public static KwonDBManager getKdbm() {
		return KDBM;
	}	
	
	public void setSqlSessionFactory(String cfgFile) {
		try {
			InputStream is = Resources.getResourceAsStream(cfgFile);
			SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
			ssf = ssfb.build(is);
		} catch (IOException e) {
		}
	}
	
	public SqlSession connect() {
		return ssf.openSession();
	}
}







