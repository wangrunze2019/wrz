package com.java.service;

import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;


public interface EbookService {
    List<Map<String,Object>> findEBooks();
}
