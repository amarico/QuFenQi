package com.fenqi.util;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class exportDB {

	public static void main(String[] args) {

		//read configuration file
		Configuration config = new Configuration().configure();

		//create SchemaExport object
		SchemaExport export = new SchemaExport(config);

		//create table of database
		export.create(true, true);
		
		System.out.println("��ݿ⵼���ɹ���");

	}
}