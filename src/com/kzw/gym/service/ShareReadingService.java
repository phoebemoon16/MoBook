package com.kzw.gym.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kzw.core.service.DefaultEntityManager;
import com.kzw.gym.entity.ShareReading;

@Service
@Transactional
public class ShareReadingService extends DefaultEntityManager<ShareReading, Integer> {

}
