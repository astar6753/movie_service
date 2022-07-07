package com.greenart.movie_service.service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.movie_service.data.MovieCastingInfoVO;
import com.greenart.movie_service.data.MovieInfoVO;
import com.greenart.movie_service.data.MovieStoryInfoVO;
import com.greenart.movie_service.mapper.MovieMapper;

@Service
public class MovieService {
    @Autowired MovieMapper movie_mapper;
    public Map<String,Object> getMovieInfoAll(Integer seq) {
        Map<String,Object> resultMap = new LinkedHashMap<String, Object>();


        MovieInfoVO movie_info = movie_mapper.selectMovieInfoBySeq(seq);
        movie_info.setPoster_img("/images/movie/"+movie_info.getPoster_img());
        resultMap.put("movie_info",movie_info);

        List<MovieStoryInfoVO> story_list = movie_mapper.selectMovieStoryInfoBySeq(seq);
        for(MovieStoryInfoVO data : story_list) {
            if(data.getType().equals("img")) {
                data.setContent("/images/movie_desc/"+data.getContent());
            }
        }
        resultMap.put("movie_story",story_list);

        List<MovieCastingInfoVO> casting_list = movie_mapper.selectMovieCastingInfoBySeq(seq);
        for(MovieCastingInfoVO data : casting_list) {
            data.setCap_file_name("/images/actor/"+data.getCap_file_name());
        }
        resultMap.put("movie_casting",casting_list);

        List<String> img_list = movie_mapper.selectMovieImagesBySeq(seq);
        for(int i=0; i<img_list.size(); i++) {
            img_list.set(i,"/images/movie/"+img_list.get(i));
        }
        resultMap.put("movie_imgs",img_list);

        List<String> trailer_list = movie_mapper.selectTrailersBySeq(seq);
        for(int i=0; i<trailer_list.size(); i++) {
            trailer_list.set(i,"/images/movie_trailer/"+trailer_list.get(i));
        }
        resultMap.put("movie_trailers",trailer_list);

        return resultMap;
    }
}
