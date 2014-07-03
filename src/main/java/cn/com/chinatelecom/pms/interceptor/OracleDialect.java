/**
 * 
 */
package cn.com.chinatelecom.pms.interceptor;

/**
 * MyBatis实现物理分页
 * @author liutong01
 * 
 */
public class OracleDialect extends Dialect {

	/*
	 * (non-Javadoc)
	 * @see cn.com.chinatelecom.ecms.interceptor.Dialect#getLimitString(java.lang.String, int, int)
	 */
	@Override
	public String getLimitString(String sql, int offset, int limit) {
		sql = sql.trim();
		StringBuffer pagingSelect = new StringBuffer();
		// pagingSelect.append("SELECT * FROM (SELECT ROW_.*, ROWNUM ROWNUM_ FROM (");
		pagingSelect.append("SELECT * FROM (SELECT ROW_.*, ROWNUM ROWNUM_ FROM (");
		pagingSelect.append(sql);
		// pagingSelect.append(") ROW_) WHERE ROWNUM_ > ").append(offset).append(" AND ROWNUM_ <= ").append(offset + limit);
		pagingSelect.append(") ROW_ WHERE ROWNUM <= ").append(offset + limit).append(") WHERE ROWNUM_ > ").append(offset);

		return pagingSelect.toString();
	}

}
