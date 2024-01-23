package com.ruoyi.edu.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 班级管理对象 edu_clazz
 * 
 * @author ruoyi
 * @date 2023-04-18
 */
public class EduClazz extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 班级ID */
    private Long id;

    /** 班级名称 */
    @Excel(name = "班级名称")
    private String clazzName;

    /** 班级人数 */
    @Excel(name = "班级人数")
    private String clazzCount;

    /** 显示状态(0显示，1不显示) */
    @Excel(name = "显示状态(0显示，1不显示)")
    private String visible;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setClazzName(String clazzName) 
    {
        this.clazzName = clazzName;
    }

    public String getClazzName() 
    {
        return clazzName;
    }
    public void setClazzCount(String clazzCount) 
    {
        this.clazzCount = clazzCount;
    }

    public String getClazzCount() 
    {
        return clazzCount;
    }
    public void setVisible(String visible) 
    {
        this.visible = visible;
    }

    public String getVisible() 
    {
        return visible;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("clazzName", getClazzName())
            .append("clazzCount", getClazzCount())
            .append("visible", getVisible())
            .toString();
    }
}
