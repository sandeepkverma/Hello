package com.mmi.entity;

public class GroupInfo {

	private Integer id;
	private String name;
	private Integer created_by;
	private String created_datetime;
	private String updated_datetime;
	private Integer updated_by;
	
	public GroupInfo() {
		super();
	}
	public GroupInfo(Integer id, String name, Integer created_by,
			String created_datetime, String updated_datetime, Integer updated_by) {
		super();
		this.id = id;
		this.name = name;
		this.created_by = created_by;
		this.created_datetime = created_datetime;
		this.updated_datetime = updated_datetime;
		this.updated_by = updated_by;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getCreated_by() {
		return created_by;
	}
	public void setCreated_by(Integer created_by) {
		this.created_by = created_by;
	}
	public String getCreated_datetime() {
		return created_datetime;
	}
	public void setCreated_datetime(String created_datetime) {
		this.created_datetime = created_datetime;
	}
	public String getUpdated_datetime() {
		return updated_datetime;
	}
	public void setUpdated_datetime(String updated_datetime) {
		this.updated_datetime = updated_datetime;
	}
	public Integer getUpdated_by() {
		return updated_by;
	}
	public void setUpdated_by(Integer updated_by) {
		this.updated_by = updated_by;
	}
	@Override
	public String toString() {
		return "GroupInfo [id=" + id + ", name=" + name + ", created_by="
				+ created_by + ", created_datetime=" + created_datetime
				+ ", updated_datetime=" + updated_datetime + ", updated_by="
				+ updated_by + "]";
	}
	

}
