package com.kh.runningdog.chatting.model.service;

import java.util.ArrayList;

import com.kh.runningdog.chatting.model.vo.Message;

public interface MessageService {
	int insertChatLog(Message saveMessage);
	ArrayList<Message> selectChatLog(int roomNo);
}
