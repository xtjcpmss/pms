package cn.com.chinatelecom.pms.managelog;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Aspect
@Component
public class LogManage {
	@Autowired
	private HttpServletRequest request;

	
	@Pointcut("execution(* cn.com.chinatelecom.pms.*.*.*(..)) && @annotation(cn.com.chinatelecom.pms.managelog.MethodLog)")
	public void methodCachePointcut() {  
    }  
  
//    @Around("methodCachePointcut()")  
//    public Object methodCacheHold(ProceedingJoinPoint joinPoint)  
//            throws Throwable {  
//        System.out.println("aop start -------------------------------------");  
//        String methodRemark = getMthodRemark(joinPoint);  
//        Object result = null;  
//        try {  
//            // 记录操作日志...谁..在什么时间..做了什么事情..  
//            result = joinPoint.proceed(); 
//            System.out.println(result+"-----------");
//        } catch (Exception e) {  
//            // 异常处理记录日志..log.error(e);  
//            throw e;  
//        }  
//  
//        System.out.print(methodRemark+"+++++++++++++++");  
//        System.out.println("aop end ");  
//        return result;  
//    }  
//
    // 获取方法的中文备注____用于记录用户的操作日志描述  
    @SuppressWarnings("rawtypes")
	public static String getMthodRemark(JoinPoint joinPoint)  
            throws Exception {  
        String targetName = joinPoint.getTarget().getClass().getName();  
        String methodName = joinPoint.getSignature().getName();  
        Object[] arguments = joinPoint.getArgs();  
  
        Class<?> targetClass = Class.forName(targetName);  
        Method[] method = targetClass.getMethods();  
        String methode = "";  
        for (Method m : method) {  
            if (m.getName().equals(methodName)) {  
                Class[] tmpCs = m.getParameterTypes();  
                if (tmpCs.length == arguments.length) {  
                    MethodLog methodCache = m.getAnnotation(MethodLog.class);  
                    methode = methodCache.methodDescription();  
                    break;  
                }  
            }  
        }  
        return methode;
    } 
	
	
	 //声明最终通知  
    @Before("methodCachePointcut()")  
    public void doAfter(JoinPoint joinPoint) throws Exception {
    	String className = joinPoint.getTarget().getClass().getName();
    	String methodName = joinPoint.getSignature().getName();
    	String methodRemark = getMthodRemark(joinPoint);  
        System.out.println("最终通知----------------"+className+":"+methodName+":"+methodRemark);  
        System.out.println("最终通知----------------哈哈哈哈");  
    }  
}
