package com.crab.service;

import org.springframework.web.multipart.MultipartFile;

/**
 * Created by A
 */
public interface IFileService {

    String upload(MultipartFile file, String path);
}
