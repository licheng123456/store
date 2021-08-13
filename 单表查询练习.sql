company数据库：
	|--dept:部门表
		|--`deptno` 部门编号
		|--`dname`  部门名称
		|--`loc`    部门所在地址
  

	|--employees:员工表
		|--`empno`	员工编号
		|--`ename`	员工姓名
		|--`job`	工作
		|--`MGR`	上级领导
		|--`hiredate`   入职日期
		|--`sal`	薪资
		|--`comm`       将金
		|--`deptno`     部门编号

/*
	1. 查询出部门编号为30的所有员工 
SELECT * FROM t_employees WHERE DEPTNO = 30;
	2. 所有销售员的姓名、编号和部门编号。 
SELECT ename,empno,deptno FROM t_employees WHERE job ="销售员";
	3. 找出奖金高于工资的员工。
SELECT * FROM t_employees WHERE comm > sal;
	4. 找出奖金高于工资60%的员工。
SELECT * FROM t_employees WHERE comm > sal*0.6;
	5. 找出部门编号为10中所有经理，和部门编号为20中所有销售员的详细资料。
SELECT * FROM t_employees WHERE (deptno = 10 AND job = "经理") OR (deptno = 20 AND job = "销售员");
	6. 找出部门编号为10中所有经理，部门编号为20中所有销售员，还有即不是经理又不是销售员但其工资大或等于20000的所有员工详细资料。
SELECT * FROM t_employees WHERE (deptno = 10 AND job = "经理") OR (deptno = 20 AND job = "销售员") OR (job NOT IN ("经理","销售员") AND sal  >= 2000);
	7. 无奖金或奖金低于1000的员工。
SELECT *  FROM t_employees WHERE comm IS NULL OR comm < 1000;
	8. 查询名字由三个字组成的员工。
SELECT * FROM t_employees WHERE ename LIKE "______";
	9. 查询2000年入职的员工。
SELECT * FROM t_employees WHERE hiredate LIKE  "1981%";
	10. 查询所有员工详细信息，用编号升序排序
SELECT* FROM t_employees ORDER BY empno ASC;
	11. 查询所有员工详细信息，用工资降序排序，如果工资相同使用入职日期升序排序
SELECT* FROM t_employees ORDER BY sal DESC,empno ASC;
	12. 查询每个部门的平均工资
select deptno,AVG(sal) from employees group by deptno;
	13. 查询每个部门的雇员数量。
select deptno,count(*) from employees group by deptno;
	14. 查询每种工作的最高工资、最低工资、人数
SELECT job, MAX(sal),MIN(sal),COUNT(*) FROM t_employees GROUP BY job;

