package com.ruoyi.edu.service;

import java.util.List;
import com.ruoyi.edu.domain.EduTeacher;

/**
 * InnoDB free: 7168 kBService接口
 * 
 * @author ruoyi
 * @date 2023-04-24
 */
public interface IEduTeacherService 
{
    /**
     * 查询InnoDB free: 7168 kB
     * 
     * @param id InnoDB free: 7168 kB主键
     * @return InnoDB free: 7168 kB
     */
    public EduTeacher selectEduTeacherById(Long id);

    /**
     * 查询InnoDB free: 7168 kB列表
     * 
     * @param eduTeacher InnoDB free: 7168 kB
     * @return InnoDB free: 7168 kB集合
     */
    public List<EduTeacher> selectEduTeacherList(EduTeacher eduTeacher);

    /**
     * 新增InnoDB free: 7168 kB
     * 
     * @param eduTeacher InnoDB free: 7168 kB
     * @return 结果
     */
    public int insertEduTeacher(EduTeacher eduTeacher);

    /**
     * 修改InnoDB free: 7168 kB
     * 
     * @param eduTeacher InnoDB free: 7168 kB
     * @return 结果
     */
    public int updateEduTeacher(EduTeacher eduTeacher);

    /**
     * 批量删除InnoDB free: 7168 kB
     * 
     * @param ids 需要删除的InnoDB free: 7168 kB主键集合
     * @return 结果
     */
    public int deleteEduTeacherByIds(String ids);

    /**
     * 删除InnoDB free: 7168 kB信息
     * 
     * @param id InnoDB free: 7168 kB主键
     * @return 结果
     */
    public int deleteEduTeacherById(Long id);
}
