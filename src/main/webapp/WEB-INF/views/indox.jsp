<?xml version="1.0" encoding="UTF-8"?>

<beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:mvc="http://www.springframework.org/schema/mvc"
	xmlns:context="http://www.springframework.org/schema/context"
	xsi:schemaLocation="http://www.springframework.org/schema/mvc http://www.springframework.org/schema/mvc/spring-mvc.xsd
		http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd
		http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context.xsd">

	<!-- Uncomment and your base-package here: <context:component-scan base-package="org.springframework.samples.web"/> -->

	<context:component-scan base-package="viewlog"></context:component-scan>

	<mvc:annotation-driven />

	<bean
		class="org.springframework.web.servlet.view.InternalResourceViewResolver">
		<!-- Example: a logical view name of 'showMessage' is mapped to '/WEB-INF/jsp/showMessage.jsp' -->
		<property name="prefix" value="/WEB-INF/view/" />
		<property name="suffix" value=".jsp" />
	</bean>

</beans>
