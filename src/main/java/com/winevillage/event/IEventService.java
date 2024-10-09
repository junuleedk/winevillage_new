package com.winevillage.event;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface IEventService {
	public ArrayList<EventDTO> listEventNow(ParameterDTO parameterDTO);
	public ArrayList<EventDTO> listEventEnd(ParameterDTO parameterDTO);
	public EventDTO viewEvent(EventDTO eventDTO);
}
