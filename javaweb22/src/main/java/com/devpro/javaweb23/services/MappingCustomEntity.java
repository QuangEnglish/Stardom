package com.devpro.javaweb23.services;

import com.devpro.javaweb23.model.BaseEntity;

public interface MappingCustomEntity<E extends BaseEntity> {
	public E convert(Object[] data);
}
