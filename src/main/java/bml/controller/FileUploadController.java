package bml.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

/**
 * User: 月影
 * Date: 2019/12/9 21:41
 */
@Controller
public class FileUploadController {

    @RequestMapping("/toUpload")
    public String toUpload(){
        return "upload";
    }

    //单文件上传测试
    @RequestMapping("/simpleUpload")
    public String simpleUpload(@RequestParam("header") MultipartFile file, Model model){
        try {
            //文件输出到指定目录。切记一定要加后面的文件名字，否则文件夹会报错！！！
            file.transferTo(new File("F:\\123\\"+file.getOriginalFilename()));
            model.addAttribute("msg","文件上传成功");
        } catch (IOException e) {
            model.addAttribute("msg","文件上传失败");
            e.printStackTrace();
        }
        return "uploadResult";
    }

    //多文件上传测试
    @RequestMapping("/moreUpload")
    public String test02(@RequestParam("header") MultipartFile[] file,Model model){
        for (MultipartFile multipartfile : file) {
            try {
                //此处不能保存到一个不存在的文件夹，否则文件夹会报错
                multipartfile.transferTo(new File("F:\\"+multipartfile.getOriginalFilename()));
                model.addAttribute("msg","上传文件成功");
            } catch (Exception e) {
                model.addAttribute("msg","文件上传失败");
                e.printStackTrace();
            }
        }
        return "uploadResult";
    }
}
