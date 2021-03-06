/* $Id: compat_getopt.h,v 1.4 2011/01/25 16:30:45 ellson Exp $ $Revision: 1.4 $ */
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

#ifdef __cplusplus
extern "C" {
#endif

#ifndef GETOPT_H
#define GETOPT_H

/* On most systems, these are defined in unistd.h or stdlib.h,
 * but some systems have no external definitions (UTS, SunOS 4.1),
 * so we provide a declaration if needed.
 */

    extern int getopt(int, char *const *, const char *);
    extern char *optarg;
    extern int opterr, optind, optopt;

#endif

#ifdef __cplusplus
}
#endif
