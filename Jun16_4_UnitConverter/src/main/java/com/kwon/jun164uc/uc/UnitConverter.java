package com.kwon.jun164uc.uc;

import java.util.ArrayList;
import java.util.HashMap;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.servlet.http.HttpServletRequest;

public class UnitConverter {
	private HashMap<String, ArrayList<String>> hm;
	private ScriptEngine se;

	public UnitConverter() {
		ScriptEngineManager sem = new ScriptEngineManager();
		se = sem.getEngineByName("javascript");
	}
	
	public HashMap<String, ArrayList<String>> getHm() {
		return hm;
	}

	public void setHm(HashMap<String, ArrayList<String>> hm) {
		this.hm = hm;
	}

	public void convert(UCResult ucr, HttpServletRequest req) {
		try {
			double from = ucr.getFrom();
			String what = ucr.getWhat();

			ArrayList<String> unitAr = hm.get(what);
			ucr.setFromUnit(unitAr.get(0));
			ucr.setToUnit(unitAr.get(1));

			String sik = unitAr.get(2).replace("n", from + "");
			double i = (Double) se.eval(sik);
			ucr.setTo(i);

			req.setAttribute("ucr", ucr);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
