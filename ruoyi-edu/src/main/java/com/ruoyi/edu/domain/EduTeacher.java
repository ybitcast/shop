package com.ruoyi.edu.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * InnoDB free: 7168 kB对象 edu_teacher
 * 
 * @author ruoyi
 * @date 2023-04-24
 */
public class EduTeacher extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 工号 */
    @Excel(name = "工号")
    private Long teaSno;

    /** 教师姓名 */
    @Excel(name = "教师姓名")
    private String teaName;

    /** 身份 */
    @Excel(name = "身份")
    private String flag;

    /** 职称 */
    @Excel(name = "职称")
    private String teaTitle;

    /** 所属部门 */
    @Excel(name = "所属部门")
    private Long deptId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTeaSno(Long teaSno) 
    {
        this.teaSno = teaSno;
    }

    public Long getTeaSno() 
    {
        return teaSno;
    }
    public void setTeaName(String teaName) 
    {
        this.teaName = teaName;
    }

    public String getTeaName() 
    {
        return teaName;
    }
    public void setFlag(String flag) 
    {
        this.flag = flag;
    }

    public String getFlag() 
    {
        return flag;
    }
    public void setTeaTitle(String teaTitle) 
    {
        this.teaTitle = teaTitle;
    }

    public String getTeaTitle() 
    {
        return teaTitle;
    }
    public void setDeptId(Long deptId) 
    {
        this.deptId = deptId;
    }

    public Long getDeptId() 
    {
        return deptId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("teaSno", getTeaSno())
            .append("teaName", getTeaName())
            .append("flag", getFlag())
            .append("teaTitle", getTeaTitle())
            .append("deptId", getDeptId())
            .toString();
    }
}
