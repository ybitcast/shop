package com.ruoyi.edu.service;

import java.util.List;
import com.ruoyi.edu.domain.EduClazz;

/**
 * 班级管理Service接口
 * 
 * @author ruoyi
 * @date 2023-04-18
 */
public interface IEduClazzService 
{
    /**
     * 查询班级管理
     * 
     * @param id 班级管理主键
     * @return 班级管理
     */
    public EduClazz selectEduClazzById(Long id);

    /**
     * 查询班级管理列表
     * 
     * @param eduClazz 班级管理
     * @return 班级管理集合
     */
    public List<EduClazz> selectEduClazzList(EduClazz eduClazz);

    /**
     * 新增班级管理
     * 
     * @param eduClazz 班级管理
     * @return 结果
     */
    public int insertEduClazz(EduClazz eduClazz);

    /**
     * 修改班级管理
     * 
     * @param eduClazz 班级管理
     * @return 结果
     */
    public int updateEduClazz(EduClazz eduClazz);

    /**
     * 批量删除班级管理
     * 
     * @param ids 需要删除的班级管理主键集合
     * @return 结果
     */
    public int deleteEduClazzByIds(String ids);

    /**
     * 删除班级管理信息
     * 
     * @param id 班级管理主键
     * @return 结果
     */
    public int deleteEduClazzById(Long id);
}
