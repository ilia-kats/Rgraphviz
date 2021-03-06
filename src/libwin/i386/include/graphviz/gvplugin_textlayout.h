/* $Id: gvplugin_textlayout.h,v 1.17 2011/01/25 16:30:49 ellson Exp $ $Revision: 1.17 $ */
/* vim:set shiftwidth=4 ts=8: */

/*************************************************************************
 * Copyright (c) 2011 AT&T Intellectual Property 
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors: See CVS logs. Details at http://www.graphviz.org/
 *************************************************************************/

#ifndef GVPLUGIN_TEXTLAYOUT_H
#define GVPLUGIN_TEXTLAYOUT_H

#include "types.h"
#include "gvplugin.h"
#include "gvcjob.h"
#include "gvcommon.h"

#ifdef __cplusplus
extern "C" {
#endif

    struct gvtextlayout_engine_s {
	boolean (*textlayout) (textpara_t *para, char** fontpath);
    };

#ifdef __cplusplus
}
#endif
#endif				/* GVPLUGIN_TEXTLAYOUT_H */
