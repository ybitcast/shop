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
import com.ruoyi.edu.domain.EduClazz;
import com.ruoyi.edu.service.IEduClazzService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 班级管理Controller
 * 
 * @author ruoyi
 * @date 2023-04-18
 */
@Controller
@RequestMapping("/edu/clazz")
public class EduClazzController extends BaseController
{
    private String prefix = "edu/clazz";

    @Autowired
    private IEduClazzService eduClazzService;

    @RequiresPermissions("edu:clazz:view")
    @GetMapping()
    public String clazz()
    {
        return prefix + "/clazz";
    }

    /**
     * 查询班级管理列表
     */
    @RequiresPermissions("edu:clazz:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(EduClazz eduClazz)
    {
        startPage();
        List<EduClazz> list = eduClazzService.selectEduClazzList(eduClazz);
        return getDataTable(list);
    }

    /**
     * 导出班级管理列表
     */
    @RequiresPermissions("edu:clazz:export")
    @Log(title = "班级管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(EduClazz eduClazz)
    {
        List<EduClazz> list = eduClazzService.selectEduClazzList(eduClazz);
        ExcelUtil<EduClazz> util = new ExcelUtil<EduClazz>(EduClazz.class);
        return util.exportExcel(list, "班级管理数据");
    }

    /**
     * 新增班级管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存班级管理
     */
    @RequiresPermissions("edu:clazz:add")
    @Log(title = "班级管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(EduClazz eduClazz)
    {
        return toAjax(eduClazzService.insertEduClazz(eduClazz));
    }

    /**
     * 修改班级管理
     */
    @RequiresPermissions("edu:clazz:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        EduClazz eduClazz = eduClazzService.selectEduClazzById(id);
        mmap.put("eduClazz", eduClazz);
        return prefix + "/edit";
    }

    /**
     * 修改保存班级管理
     */
    @RequiresPermissions("edu:clazz:edit")
    @Log(title = "班级管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(EduClazz eduClazz)
    {
        return toAjax(eduClazzService.updateEduClazz(eduClazz));
    }

    /**
     * 删除班级管理
     */
    @RequiresPermissions("edu:clazz:remove")
    @Log(title = "班级管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(eduClazzService.deleteEduClazzByIds(ids));
    }
}
