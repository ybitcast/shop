package com.ruoyi.edu.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.edu.mapper.EduTeacherMapper;
import com.ruoyi.edu.domain.EduTeacher;
import com.ruoyi.edu.service.IEduTeacherService;
import com.ruoyi.common.core.text.Convert;

/**
 * InnoDB free: 7168 kBService业务层处理
 * 
 * @author ruoyi
 * @date 2023-04-24
 */
@Service
public class EduTeacherServiceImpl implements IEduTeacherService 
{
    @Autowired
    private EduTeacherMapper eduTeacherMapper;

    /**
     * 查询InnoDB free: 7168 kB
     * 
     * @param id InnoDB free: 7168 kB主键
     * @return InnoDB free: 7168 kB
     */
    @Override
    public EduTeacher selectEduTeacherById(Long id)
    {
        return eduTeacherMapper.selectEduTeacherById(id);
    }

    /**
     * 查询InnoDB free: 7168 kB列表
     * 
     * @param eduTeacher InnoDB free: 7168 kB
     * @return InnoDB free: 7168 kB
     */
    @Override
    public List<EduTeacher> selectEduTeacherList(EduTeacher eduTeacher)
    {
        return eduTeacherMapper.selectEduTeacherList(eduTeacher);
    }

    /**
     * 新增InnoDB free: 7168 kB
     * 
     * @param eduTeacher InnoDB free: 7168 kB
     * @return 结果
     */
    @Override
    public int insertEduTeacher(EduTeacher eduTeacher)
    {
        return eduTeacherMapper.insertEduTeacher(eduTeacher);
    }

    /**
     * 修改InnoDB free: 7168 kB
     * 
     * @param eduTeacher InnoDB free: 7168 kB
     * @return 结果
     */
    @Override
    public int updateEduTeacher(EduTeacher eduTeacher)
    {
        return eduTeacherMapper.updateEduTeacher(eduTeacher);
    }

    /**
     * 批量删除InnoDB free: 7168 kB
     * 
     * @param ids 需要删除的InnoDB free: 7168 kB主键
     * @return 结果
     */
    @Override
    public int deleteEduTeacherByIds(String ids)
    {
        return eduTeacherMapper.deleteEduTeacherByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除InnoDB free: 7168 kB信息
     * 
     * @param id InnoDB free: 7168 kB主键
     * @return 结果
     */
    @Override
    public int deleteEduTeacherById(Long id)
    {
        return eduTeacherMapper.deleteEduTeacherById(id);
    }
}
