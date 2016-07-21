package cn.tf.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
//单例
public class Env extends Properties{
	private static Env env;
	
	//构造方法私有化，在类的外部就不能实例这个类的对象
	private Env(){
		//读取db.properties属性文件
		//在父类properties中有一股方法叫load（inputstream),通过这个方法可以读取一个键值对文件呢，
		
		//getClassLoader()   获取类加载器
		InputStream iis=Env.class.getClassLoader().getResourceAsStream("db.properties");
		
		try {
			super.load(iis);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	//对外提供唯一访问方法,可以将一个env对象返回给调用者
	public  synchronized  static Env getInstance(){
		if(env==null){
			env=new Env();
		}
		return env;
		
	}

}
