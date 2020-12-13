package com.spring.board;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

public class BoardRowMapper implements RowMapper<BoardVO> {

	@Override
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO vo = new BoardVO();
		vo.setId(rs.getInt("id"));
		vo.setTitle(rs.getString("title"));
		vo.setDescription(rs.getString("description"));
		vo.setSubject(rs.getString("subject"));
		vo.setDuedate(rs.getString("duedate"));
		vo.setRegdate(rs.getDate("regdate"));
		return vo;
	}

}
