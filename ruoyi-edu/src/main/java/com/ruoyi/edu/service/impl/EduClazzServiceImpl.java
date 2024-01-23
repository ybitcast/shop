package com.ruoyi.edu.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.edu.mapper.EduClazzMapper;
import com.ruoyi.edu.domain.EduClazz;
import com.ruoyi.edu.service.IEduClazzService;
import com.ruoyi.common.core.text.Convert;

/**
 * 班级管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-04-18
 */
@Service
public class EduClazzServiceImpl implements IEduClazzService 
{
    @Autowired
    private EduClazzMapper eduClazzMapper;

    /**
     * 查询班级管理
     * 
     * @param id 班级管理主键
     * @return 班级管理
     */
    @Override
    public EduClazz selectEduClazzById(Long id)
    {
        return eduClazzMapper.selectEduClazzById(id);
    }

    /**
     * 查询班级管理列表
     * 
     * @param eduClazz 班级管理
     * @return 班级管理
     */
    @Override
    public List<EduClazz> selectEduClazzList(EduClazz eduClazz)
    {
        return eduClazzMapper.selectEduClazzList(eduClazz);
    }

    /**
     * 新增班级管理
     * 
     * @param eduClazz 班级管理
     * @return 结果
     */
    @Override
    public int insertEduClazz(EduClazz eduClazz)
    {
        return eduClazzMapper.insertEduClazz(eduClazz);
    }

    /**
     * 修改班级管理
     * 
     * @param eduClazz 班级管理
     * @return 结果
     */
    @Override
    public int updateEduClazz(EduClazz eduClazz)
    {
        return eduClazzMapper.updateEduClazz(eduClazz);
    }

    /**
     * 批量删除班级管理
     * 
     * @param ids 需要删除的班级管理主键
     * @return 结果
     */
    @Override
    public int deleteEduClazzByIds(String ids)
    {
        return eduClazzMapper.deleteEduClazzByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除班级管理信息
     * 
     * @param id 班级管理主键
     * @return 结果
     */
    @Override
    public int deleteEduClazzById(Long id)
    {
        return eduClazzMapper.deleteEduClazzById(id);
    }
}
