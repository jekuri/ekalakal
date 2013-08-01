<%@ page import="com.jekuri.trade.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="person.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${personInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="person.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${personInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="person.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${personInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="person.gender.label" default="Gender" />
		
	</label>
	<g:textField name="gender" value="${personInstance?.gender}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'birthDate', 'error')} ">
	<label for="birthDate">
		<g:message code="person.birthDate.label" default="Birth Date" />
		
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${personInstance?.birthDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="person.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailAddress" required="" value="${personInstance?.emailAddress}"/>
</div>

