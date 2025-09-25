function normal    (shader, t_base, t_second, t_detail)
  shader:begin  ("model_distort4ghost","particle_hard")    -- particle_alphaonly
      : sorting  (3, true)
      : blend    (true,blend.srccolor,blend.invsrcalpha)
      : aref     (true,0)
      : zb     (true,false)
      : fog    (false)
      : distort   (false)
	shader: dx10texture ("s_base", t_base)
	shader: dx10sampler ("smp_base")
end