package com.duyi.dao;

import com.duyi.domain.Dept;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface DeptDao {
    @Insert("insert into dept values(null,#{dname},#{loc})")
    @Options(useGeneratedKeys = true,keyProperty = "dno") //保存后能够获得主键
    public void save(Dept dept) ;

    @Select("select * from dept")
    @Results({
            @Result(property = "dno",column = "dno",id = true),
            @Result(property = "dname",column = "dname"),
            @Result(property = "loc",column = "loc"),
            @Result(property = "emps",column = "dno",many = @Many(select = "com.duyi.dao.EmpDao.findByDept"))
    })
    public List<Dept> deptList();

}
