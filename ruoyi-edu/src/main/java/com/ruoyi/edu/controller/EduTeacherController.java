package com.ruoyi.edu.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.edu.domain.EduTeacher;
import com.ruoyi.edu.service.IEduTeacherService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * InnoDB free: 7168 kBController
 * 
 * @author ruoyi
 * @date 2023-04-24
 */
@Controller
@RequestMapping("/edu/teacher")
public class EduTeacherController extends BaseController
{
    private String prefix = "edu/teacher";

    @Autowired
    private IEduTeacherService eduTeacherService;

    @RequiresPermissions("edu:teacher:view")
    @GetMapping()
    public String teacher()
    {
        return prefix + "/teacher";
    }

    /**
     * 查询InnoDB free: 7168 kB列表
     */
    @RequiresPermissions("edu:teacher:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(EduTeacher eduTeacher)
    {
        startPage();
        List<EduTeacher> list = eduTeacherService.selectEduTeacherList(eduTeacher);
        return getDataTable(list);
    }

    /**
     * 导出InnoDB free: 7168 kB列表
     */
    @RequiresPermissions("edu:teacher:export")
    @Log(title = "InnoDB free: 7168 kB", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(EduTeacher eduTeacher)
    {
        List<EduTeacher> list = eduTeacherService.selectEduTeacherList(eduTeacher);
        ExcelUtil<EduTeacher> util = new ExcelUtil<EduTeacher>(EduTeacher.class);
        return util.exportExcel(list, "InnoDB free: 7168 kB数据");
    }

    /**
     * 新增InnoDB free: 7168 kB
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存InnoDB free: 7168 kB
     */
    @RequiresPermissions("edu:teacher:add")
    @Log(title = "InnoDB free: 7168 kB", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(EduTeacher eduTeacher)
    {
        return toAjax(eduTeacherService.insertEduTeacher(eduTeacher));
    }

    /**
     * 修改InnoDB free: 7168 kB
     */
    @RequiresPermissions("edu:teacher:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        EduTeacher eduTeacher = eduTeacherService.selectEduTeacherById(id);
        mmap.put("eduTeacher", eduTeacher);
        return prefix + "/edit";
    }

    /**
     * 修改保存InnoDB free: 7168 kB
     */
    @RequiresPermissions("edu:teacher:edit")
    @Log(title = "InnoDB free: 7168 kB", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(EduTeacher eduTeacher)
    {
        return toAjax(eduTeacherService.updateEduTeacher(eduTeacher));
    }

    /**
     * 删除InnoDB free: 7168 kB
     */
    @RequiresPermissions("edu:teacher:remove")
    @Log(title = "InnoDB free: 7168 kB", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(eduTeacherService.deleteEduTeacherByIds(ids));
    }
}
