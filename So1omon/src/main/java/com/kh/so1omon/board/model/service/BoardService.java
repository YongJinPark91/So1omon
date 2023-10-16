package com.kh.so1omon.board.model.service;

import java.util.ArrayList;

import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.TBoard;

public interface BoardService {
	
	ArrayList<Board> searchBoard(String keyword);
	ArrayList<TBoard> searchTboard(String keyword);
}
