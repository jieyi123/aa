package com.duyi.dao;

import com.duyi.domain.Emp;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface EmpDao {

    @Insert("insert into emp values(null,#{ename},#{sal},#{dno})")
    public void save(Emp emp);

    @Select("select * from emp where dno=#{dno}")
    public List<Emp> findByDept(int dno);

}
