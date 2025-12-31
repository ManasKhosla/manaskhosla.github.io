---
title: From a Simple Blog to Kubernetes (Without Losing My Sanity)  
layout: post  
comments: true  
categories: [devops]  
tags: [kubernetes, docker, side-projects, self-hosting]  
excerpt: Linux-based development using a Windows PC without Docker, Cloud, or Windows Subsystem for Linux.  
---  

If you’ve been following my blog for a while, you might remember it at  
`manaskhosla.github.io`.  

It worked. It was fast. It was simple.  

Then, I did what any curious engineer eventually does. I asked:  

> *“What if I hosted this myself?”*

This post isn’t about seeking out complexity. It’s about understanding what’s under the hood, making things a bit more robust, and keeping the joy of writing intact.  

---

## Why Jekyll Still Feels Right  

I’ve tried many platforms over the years, but I keep returning to **Jekyll**.  

Why?  

* I write in Markdown  
* The output is just static files  
* No databases waking up at 3 AM  
* No anxiety over “framework update broke my blog”  

It’s predictable. Almost boring.  
Which, in production, is a compliment.  

I used the **Chirpy theme** this time around, mostly because it lets me focus on writing instead of widgets.  

---

## The Moment I Outgrew GitHub Pages  

GitHub Pages is fantastic until you want a bit more control.  

Things like:  

* owning the entire deployment pipeline  
* understanding how traffic flows  
* learning what really happens after `git push`  

I already had a Kubernetes cluster running... for other things 🚢  
(If you know, you know.)  

So the blog became a perfect low-risk candidate for experimentation.  

---

## Containerizing the Blog (Without Overthinking It)  

At a high level, the setup is simple:  

1. Jekyll builds the site  
2. The output becomes plain HTML files  
3. A lightweight web server serves those files  

That’s it.  

No runtime Ruby.  
No complex backend logic.  
Just files doing what files do best—existing quietly.  

> **Side note:**  
> This is one of those moments when you realize how powerful “boring tech” really is.  

---

## A Brief Detour Into Containers  

I wrapped the entire setup in a Docker image so it could run anywhere.  

There were a few bumps along the way:  
* platform differences (Apple Silicon likes to keep things interesting)  
* native dependencies being a little picky  
* learning when to let defaults do their job instead of fighting them  

Nothing dramatic—just the usual “ah, that's how it works” moments.  

Eventually, the image built cleanly, ran locally, and worked just the way I wanted.  

That’s when I stopped tweaking and moved on. This is a very important skill.  

---

## Enter Kubernetes  

Now for the fun part.  

Deploying the blog to Kubernetes felt oddly satisfying.  

Suddenly:  

* the site had health checks  
* scaling was a setting, not a redesign  
* traffic entered through a well-defined gateway  

Or, as Tolkien might say:  

> **One Ingress to rule them all.**  

Requests come in, get routed cleanly, and the blog just responds.  

No drama. No heroics. Just uptime.  

---

## “Isn’t This Overkill for a Blog?”  

Yes.  
And also… not really.  

The blog itself is simple.  
But the learning isn’t.  

This setup let me:  

* understand container builds deeply  
* think about deployments the same way I do at work  
* reuse infrastructure I already had  

And importantly—once it’s stable, I don’t have to think about it again.  

This brings us back to the real goal.  

---

## Writing, Not Maintaining  

The funny thing is that after all this setup, the day-to-day experience didn’t change much.  

I still:  

* write Markdown  
* commit  
* publish  

But now I understand the entire path my words take—from editor to browser.  

That feels… grounding.  

---

## A Quiet Ending  

This blog has lived in many places:  

* GitHub Pages  
* static hosting  
* and now, quietly, on my own infrastructure  

It shares space with a few other services I already run—nothing flashy, just things I enjoy working on.  

Most of this work happened during the quiet stretch of winter holidays—when the world slows down, coffee stays hot longer, and I finally get time to tinker without a calendar pressuring me.  

There’s something satisfying about using that downtime to clean up old ideas and give them a more permanent home.  

If nothing else, this little journey reminded me that even personal projects deserve a bit of care—not because they need it, but because building things thoughtfully is half the fun.  

Here’s to slow evenings, fewer alerts, and projects built during winter nights and year-end reflections.  