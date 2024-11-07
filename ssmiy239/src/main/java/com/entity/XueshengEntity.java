package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 学生
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-04-26 19:43:58
 */
@TableName("xuesheng")
public class XueshengEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XueshengEntity() {
		
	}
	
	public XueshengEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 学号
	 */
					
	private String xuehao;
	
	/**
	 * 密码
	 */
					
	private String mima;
	
	/**
	 * 学生姓名
	 */
					
	private String xueshengxingming;
	
	/**
	 * 性别
	 */
					
	private String xingbie;
	
	/**
	 * 出生日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date chushengriqi;
	
	/**
	 * 联系手机
	 */
					
	private String lianxishouji;
	
	/**
	 * 个人照片
	 */
					
	private String gerenzhaopian;
	
	/**
	 * 入学时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date ruxueshijian;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：学号
	 */
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	/**
	 * 获取：学号
	 */
	public String getXuehao() {
		return xuehao;
	}
	/**
	 * 设置：密码
	 */
	public void setMima(String mima) {
		this.mima = mima;
	}
	/**
	 * 获取：密码
	 */
	public String getMima() {
		return mima;
	}
	/**
	 * 设置：学生姓名
	 */
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}
	/**
	 * 设置：性别
	 */
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
	/**
	 * 设置：出生日期
	 */
	public void setChushengriqi(Date chushengriqi) {
		this.chushengriqi = chushengriqi;
	}
	/**
	 * 获取：出生日期
	 */
	public Date getChushengriqi() {
		return chushengriqi;
	}
	/**
	 * 设置：联系手机
	 */
	public void setLianxishouji(String lianxishouji) {
		this.lianxishouji = lianxishouji;
	}
	/**
	 * 获取：联系手机
	 */
	public String getLianxishouji() {
		return lianxishouji;
	}
	/**
	 * 设置：个人照片
	 */
	public void setGerenzhaopian(String gerenzhaopian) {
		this.gerenzhaopian = gerenzhaopian;
	}
	/**
	 * 获取：个人照片
	 */
	public String getGerenzhaopian() {
		return gerenzhaopian;
	}
	/**
	 * 设置：入学时间
	 */
	public void setRuxueshijian(Date ruxueshijian) {
		this.ruxueshijian = ruxueshijian;
	}
	/**
	 * 获取：入学时间
	 */
	public Date getRuxueshijian() {
		return ruxueshijian;
	}

}
