package com.ABCShop.entities;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name = "part1")
public class Part1 implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String a;

	private String b;

	private String c;

	@Column(name="CORRECT_ANSWERS")
	private String correctAnswers;

	private String d;

	private int id_TEST;

	private int level;

	@Column(name="LINK_IMG")
	private String linkImg;

	@Column(name="LINK_MP3")
	private String linkMp3;

	private String question;

	private String tag;

	public Part1() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getA() {
		return this.a;
	}

	public void setA(String a) {
		this.a = a;
	}

	public String getB() {
		return this.b;
	}

	public void setB(String b) {
		this.b = b;
	}

	public String getC() {
		return this.c;
	}

	public void setC(String c) {
		this.c = c;
	}

	public String getCorrectAnswers() {
		return this.correctAnswers;
	}

	public void setCorrectAnswers(String correctAnswers) {
		this.correctAnswers = correctAnswers;
	}

	public String getD() {
		return this.d;
	}

	public void setD(String d) {
		this.d = d;
	}

	public int getId_TEST() {
		return this.id_TEST;
	}

	public void setId_TEST(int id_TEST) {
		this.id_TEST = id_TEST;
	}

	public int getLevel() {
		return this.level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public String getLinkImg() {
		return this.linkImg;
	}

	public void setLinkImg(String linkImg) {
		this.linkImg = linkImg;
	}

	public String getLinkMp3() {
		return this.linkMp3;
	}

	public void setLinkMp3(String linkMp3) {
		this.linkMp3 = linkMp3;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getTag() {
		return this.tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

}